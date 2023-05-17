#include <benchmark/benchmark.h>
#include <iostream>
// Should contain benchmarks for move_gen, but for now it just runs some functions to test that benchmark is loaded correct


static void BM_StringCreation(benchmark::State& state) {
  std::string acc;
  for (auto _ : state)
    acc += "1";
  
  
  std::cout << sizeof(acc) << std::endl;
}

// Register the function as a benchmark
BENCHMARK(BM_StringCreation)
    ->Name("StringCreation")
    ->Unit(benchmark::kMillisecond);
