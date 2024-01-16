#include <iostream>
#include <cstdlib>

static class Logger
{
public:
  void error(const std::string &errorMessage);
  void info(const std::string &errorMessage);
}
