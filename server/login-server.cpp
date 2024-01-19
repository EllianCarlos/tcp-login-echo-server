#include <string>
#include <iostream>

#include "server.cpp"
#include "login-server.hpp"

void LoginServer::process(std::string requestMessage) const {
  std::cout << "Message: " << requestMessage << std::endl;
  if (requestMessage == "123") return;

  return; 
} 

