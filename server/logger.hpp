#ifndef __LOGGER_HPP
#define __LOGGER_HPP

#include <iostream>
#include <cstdlib>

class Logger
{
public:
  static void error(const std::string &errorMessage);
  static void info(const std::string &errorMessage);
private:
  static std::string getTimestamp();
};
#endif // __LOGGER_HPP