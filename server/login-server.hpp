#ifndef __LOGIN_SERVER_HPP
#define __LOGIN_SERVER_HPP

#include <string>

#include "server.cpp"

class LoginServer : public iServer {
public:
  void process(std::string requestMessage) const override;
};

#endif // __LOGIN_SERVER_HPP
