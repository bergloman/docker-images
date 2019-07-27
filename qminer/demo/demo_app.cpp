#include <qminer.h>

int main(int argc, char **argv) {

#ifndef NDEBUG
    // report we are running with all Asserts turned on
    printf("*** Running in debug mode ***\n");
#endif

    Env = TEnv(argc, argv, TNotify::StdNotify);

    TQm::TEnv::Init();
    TQm::TEnv::InitLogger(2, "std");

    TQm::InfoLog("Hello");

    // Env.PrepArgs("Stream processing", 0);
    try {

        // do some magic

    } catch (PExcept Except) {
        TQm::ErrorLog(TStr::Fmt("Error: %s\n", Except->GetMsgStr().CStr()));
    } catch (...) {
        TQm::ErrorLog("Unknown exception!");
    }

    return 0;
}
