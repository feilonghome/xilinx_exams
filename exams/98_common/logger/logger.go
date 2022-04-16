package main

import (
	"fmt"
)
import "C"

//export Version
func Version() {
	fmt.Println("v0.0.1");
}
