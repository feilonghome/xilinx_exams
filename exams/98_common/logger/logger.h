
#ifndef __LOGGER_H__
#define __LOGGER_H__

typedef long long LOGSIGNAL;
typedef char* LOGNAME;
enum LOGTYPE{
    LOGTYPE_INPUT,
    LOGTYPE_OUTPUT_EXPECT,
    LOGTYPE_OUTPUT_USER,
    LOGTYPE_MISMATCH,

    LOGTYPE_ALL,
};

typedef struct {
    enum LOGTYPE LogType;
    LOGNAME LogName;
    LOGSIGNAL LogValue;
} LogItem;

#endif //__LOGGER_H__
