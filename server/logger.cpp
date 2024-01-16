#include <iostream>
#include <cstdlib>
#include <iomanip>
#include <ctime>

static class Logger
{
public:
  void error(const std::string &errorMessage)
  {
    std::cerr << "[ERROR] [" << getTimestamp() << "]" << errorMessage << std::endl;
  }

  void info(const std::string &errorMessage)
  {
    std::cout << "[INFO] [" << getTimestamp() << "]" << errorMessage << std::endl;
  }

private:
  std::string getTimestamp()
  {
    auto t = std::time(nullptr);
    auto tm = *std::localtime(&t);
    return std::put_time(&tm, "%d-%m-%Y %H-%M-%S").str();
  }
}