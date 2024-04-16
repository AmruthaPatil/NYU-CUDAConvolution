# Convolution Operations with CUDA

## Introduction
This project is dedicated to implementing convolution operations on an image using CUDA, exploiting different methodologies to optimize performance. The three methods—basic, tiled, and cuDNN-based convolution—are evaluated to determine their efficiency and effectiveness in utilizing GPU resources.

## Convolution Implementations
- **Basic Convolution:** Implements the simplest form of convolution without using advanced CUDA features like tiling or shared memory.
- **Tiled Convolution:** Optimizes the basic convolution by introducing tiling techniques and utilizing shared memory, aiming to reduce memory latency and improve throughput.
- **cuDNN-Based Convolution:** Utilizes NVIDIA’s cuDNN libraries, designed to provide highly tuned implementations for standard routines involved in deep neural networks.

Each method was profiled separately to measure execution times and validate functional correctness by comparing checksum outputs.

## Results
All three methods produced the same checksum, confirming the correctness of the implementations:

- Checksum: 122756344698240.000000

Execution times for each method were as follows:

- Basic Convolution: 11.729 ms
- Tiled Convolution: 15.125 ms
- cuDNN Convolution: 13.105 ms

### Observations
- Basic Convolution emerged as the fastest, suggesting minimal overhead and efficient performance for the problem size tested.
- Tiled Convolution showed longer execution times, possibly due to the overhead associated with managing shared memory and setting up tiling.
- cuDNN Convolution did not offer significant performance improvements over basic convolution for the tested sizes, which might change with larger datasets or different computational contexts.

## Installation and Setup
Ensure you have the CUDA Toolkit and NVIDIA cuDNN library installed. The project is developed and tested with CUDA version 10.0 and cuDNN version 7.6.

## How to Run
Use the following commands to compile and run the convolution operations:

```bash
cd path/to/folder
make all
./convolve  # This will execute all three convolution methods and output the results
```
## Additional Information
**Dependencies:**
- CUDA Toolkit 10.0 or higher
- NVIDIA cuDNN Library 7.6 or higher
- A compatible NVIDIA GPU

**Resources:**
- [NVIDIA cuDNN Library](https://developer.nvidia.com/cudnn)

## Conclusion
This project demonstrates the impact of different convolution implementations on performance in CUDA. It highlights the importance of choosing the right approach based on the specific needs of the application and the available hardware, illustrating how advanced optimizations can influence execution times.


