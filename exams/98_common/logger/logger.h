
typedef unsigned long long LOGSIGNAL;
typedef unsigned char* LOGNAME;
enum LOGTYPE{
    LOGTYPE_INPUT,
    LOGTYPE_OUTPUT_EXPECT,
    LOGTYPE_OUTPUT_USER,
    LOGTYPE_MISMATCH,

    LOGTYPE_ALL,
} ;

struct LOGCONTENT {
    enum LOGTYPE type;
    LOGNAME name;
    LOGSIGNAL signal;
};
