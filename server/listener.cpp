#include <iostream>
#include <cstdlib>
#include <netinet/in.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <type_traits>
#include <unistd.h>
#include <string.h>

#include "logger.hpp"
#include "login-server.hpp"
#include "listener.hpp"
#include "server.cpp"

Listener::Listener(int portNum)
{
  mainSocketInt = socket(AF_INET, SOCK_STREAM, 0);

  if (mainSocketInt < 0)
  {
    Logger::error("Socket cannot be created.");
    exit(0);
  }

  Logger::info("Socket created.");
  mainSocket.sin_family = AF_INET;
  mainSocket.sin_port = htons(portNum);
  inet_pton(AF_INET, "0.0.0.0", &mainSocket.sin_addr);
}

void Listener::bindPort()
{
  if (bind(mainSocketInt, (sockaddr *)&mainSocket, sizeof(mainSocket)) < 0)
  {
    Logger::error("Could not bind to port.");
    exit(-3);
  }

  Logger::info("Socket was binded to given address.");
}

void Listener::acceptListener()
{
  socklen_t client_addr_size = sizeof(clientSocket);

  if ((clientSocketInt = accept(mainSocketInt, (sockaddr *)&clientSocket, &client_addr_size)) < 0)
  {
    Logger::error("Cannot accept connections.");
    exit(-5);
  }

  Logger::info("Can accept connections.");
}

void Listener::listenPort()
{
  if (listen(mainSocketInt, SOMAXCONN) < 0)
  {
    Logger::error("Socket could not listen!");
    exit(-4);
  }

  Logger::info("Socket is listening.");
}

void Listener::closeMain()
{
  close(mainSocketInt);
  Logger::info("Closed main socket.");
}

void Listener::closeClient()
{
  close(clientSocketInt);
  Logger::info("Closed client socket.");
}

void Listener::receive(LoginServer &server)
{
  char msg_buf[4096];
  int bytes;
  while (true)
  {
    bytes = recv(clientSocketInt, &msg_buf, 4096, 0);
    if (bytes == 0)
    {
      Logger::info("Client is not connected.");
      break;
    }
    else if (bytes < 0)
    {
      Logger::error("Something went wrong.");
      break;
    }
    else
    {
      Logger::info("Received message from client");
      if (send(clientSocketInt, &msg_buf, bytes, 0) < 0)
      {
        Logger::error("Message could not be sent.");
        break;
      }
      server.process(std::string(msg_buf, 0, bytes));
    }
  }
}
