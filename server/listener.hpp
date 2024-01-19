#ifndef __LISTENER_HPP
#define __LISTENER_HPP

#include <string>
#include <arpa/inet.h>

#include "server.cpp"
#include "login-server.hpp"

class Listener
{
public:
  Listener(int portNum);
  void bindPort();
  void acceptListener();
  void listenPort();
  void closeMain();
  void closeClient();
  void receive(LoginServer &server);
  std::string getHostInfo();
private:
  int mainSocketInt;
  sockaddr_in mainSocket;
  int clientSocketInt;
  sockaddr_in clientSocket;
  char buf[INET_ADDRSTRLEN];
};

#endif  // __LISTENER_HPP