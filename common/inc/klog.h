#ifndef KLOG_H
#define KLOG_H

#include <iostream>

class KLog
{
public:
    static void print_info(const std::string&, bool a_newline = true);

public:
    KLog() = default;
    KLog(const std::string& p_name);

    void printInfo(const std::string&, bool a_newline = true);

protected:
    std::string m_name;

}; // KLog

#endif // KLOG_H

