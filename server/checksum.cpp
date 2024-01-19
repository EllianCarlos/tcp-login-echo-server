#include <stdint.h>
#include <iostream>
#include <string>

class Checksum {
public:
  static uint8_t calculate(const std::string data) {
    uint8_t counter = 0;

    for (char d : data) {
        counter += static_cast<uint8_t>(d);
    }

    return ~counter; 
  }
};
