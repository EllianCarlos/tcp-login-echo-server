#ifndef __ISERVER
#define __ISERVER
#include <string>

class iServer {
public:
    virtual ~iServer() {};
    virtual void process(std::string requestMessage) const = 0;
};
#endif
