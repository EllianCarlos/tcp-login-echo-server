#include <iostream>
#include <cstdlib>
#include <netinet/in.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <type_traits>
#include <unistd.h>

#include "logger.hpp"

class Listener
{
public:
  Listener(int portNum)
  {
    listenerStatus = socket(AF_INET, SOCK_STREAM, 0);

    if (listenerStatus < 0)
    {
      Logger.error("Socket cannot be created.")
          exit(0);
    }

    Logger.info("Socket created.")
        socketAddress.sin_family = AF_INET;
    socketAddress.sin_port = htons(portNum);
    inet_pton(AF_INET, "0.0.0.0", &sockerAddress.sin_addr);
  }

  void bind()
  {
    if (bind(listenerStatus, (sockaddr *)&server_addr, sizeof(server_addr)) < 0)
    {
      Logger.error("Could not bind to port.");
      exit(-3);
    }

    Logger.info("Socket was binded to given address.");
  }

  void accept() {
    socklen_t client_addr_size = sizeof(client_addr);
    int sock_client;

    if ((sock_client = accept(listenerStatus, (sockaddr*)&client_addr, &client_addr_size)) < 0) {
      Logger.error("Cannot accept connections.");
      exit(-5);
    }

    Logger.info("Can accept connections.");
  }

  void listen()
  {
    if (listen(listenerStatus, SOMAXCONN) < 0)
    {
      Logger.error("Socket could not listen!");
      exit(-4);
    }

    Logger.info("Socket is listening.");
  }

  void closeMain() {
    close(listenerStatus);
    Logger.info("Closed main socket.")
  }

  void closeClient() {
    close(sockStatus);
    Logger.info("Closed client socket.")
  }

  string receive() {
    char msg_buf[4096];
    int bytes;
    while (true) {
      bytes = recv(sockStatus, &msg_buf, 4096, 0);
      if (bytes == 0) {
	Logger.info("Client is not connected.");
	break;
      }
      else if (bytes < 0) {
	Logger.error("Something went wrong.");
	break;
      }
      else {
	Logger.info("received message from client");
	if (send(sockStatus, &msg_buf, bytes, 0) < 0) {
	  Logger.error("Message could not be sent.");
	  break;
	}
	return std::string(msg_buf, 0, bytes);
      }
    } 
  }

private:
  int listenerStatus;
  sockaddr_in socketAddress;
  int sockStatus;
  sockaddr_in client;
}
