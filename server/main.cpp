#include <iostream>
#include <cstdlib>
#include <netinet/in.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <type_traits>
#include <unistd.h>
#include <memory>

#include "listener.hpp"
#include "logger.hpp"
#include "login-server.hpp"

// Checks If a c-style string is an integer
bool is_int(char *c)
{
  while (*c != '\0')
  {
    if (*c < '0' || *c > '9')
      return false;
    c++;
  }
  return true;
}

int main(int argc, char **argv)
{
  if (argc != 2 || !is_int(argv[1]))
  {
    std::cerr << "[ERROR] Port is not provided via command line parameters!\n";
    return -1;
  }

  LoginServer *svr = new LoginServer();

  Listener *listener = new Listener(atoi(argv[1]));

  listener->bindPort();

  listener->listenPort();

  listener->acceptListener();

  listener->closeMain();

  listener->receive(*svr);

  listener->closeClient();

  return 0;
}
