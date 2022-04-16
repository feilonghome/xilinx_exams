
#include "logger.h"
#include "libwavedrom.h"

void Log() {
    LogItem item;
    item.LogName = "test";
    item.LogType = LOGTYPE_OUTPUT_USER;
    item.LogValue = 1;

    LogC(item);
}

int main() {
    Version();

    Log();

    return 0;
}
