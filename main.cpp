#include <iostream>
#include "test.h"

using namespace std;

int main()
{
    cout << "Program starting." << endl;
    std::cout << "C++ version: " << __cplusplus << "\n\n";

    runChecks();

    return 0;
}

