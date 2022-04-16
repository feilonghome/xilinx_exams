package main

import (
	"fmt"
)
// #include <logger.h>
import "C"

//export Version
func Version() {
	fmt.Println("v0.0.1");
}

var logs map[string]int64

const (
	LOGTYPE_INPUT = 0
	LOGTYPE_OUTPUT_EXPECT = 1
	LOGTYPE_OUTPUT_USER = 2
	LOGTYPE_MISMATCH = 3

	LOGTYPE_ALL = 4
)

type LogItem struct {
	LogType uint32
    LogName string
    LogValue  int64
}

func Log(logItem LogItem){
	fmt.Printf("%v\n", logItem);
}

//export LogC
func LogC(logItem C.LogItem){
	Log(LogItem{
		LogType: logItem.LogType,
		LogName: C.GoString(logItem.LogName),
		LogValue: int64(logItem.LogValue),
	});
}

func main(){}
