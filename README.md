# Nora : C++ Chess Engine

Chess engine developed in C++23. The goal of the project is to see how much I have improved since writting my previous engine [LINKcs](https://github.com/Woldbye/LINKcs) in C\#.

## Specifications

* C++23
* gcc 12.0, -O3 optimized
* Ubuntu 22.0 running Docker Image through Docker Compose
* Header only library
* UCI-protocl <!-- TODO Add reference to API -->

## How to run

The project is run through docker compose. The docker image is based on Ubuntu 22.0, and uses gcc 12.0 to compile the project. The docker image is built with the following command:
* To compile:
  ```bash 
  docker compose up compile
  ```
* To run tests
  ```bash 
  docker compose up test
  ```
* To run benchmarks
  ```bash 
  docker compose up benchmark
  ```
* To compile and run main.cpp
  ```bash 
  docker compose up nora
  ```

## API

Nora communicates through the UCI-protocol, and as such can be run in any GUI that implements this protocol (etc. [Arena](http://www.playwitharena.de/)).
<!-- TODO: Add examples -->