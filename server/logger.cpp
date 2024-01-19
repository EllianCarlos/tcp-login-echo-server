#include <iostream>
#include <cstdlib>
#include <chrono>
#include <format>
#include <string>

#include "logger.hpp"

void Logger::error(const std::string &errorMessage)
{
  std::cerr << "[ERROR] [" << getTimestamp() << "]" << errorMessage << std::endl;
}

void Logger::info(const std::string &errorMessage)
{
  std::cout << "[INFO] [" << getTimestamp() << "]" << errorMessage << std::endl;
}

std::string Logger::getTimestamp()
{
  std::time_t now = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());

  char buf[100] = {0};
  std::strftime(buf, sizeof(buf), "%Y-%m-%d", std::localtime(&now));
  return buf;
}
