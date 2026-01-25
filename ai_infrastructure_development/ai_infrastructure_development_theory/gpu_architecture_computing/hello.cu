#include <stdio.h>

// CUDA kernel
__global__ void helloFromGPU() {
    printf("Hello World from GPU! Thread %d\n", threadIdx.x);
}

int main() {
    // Launch kernel with 1 block and 1 thread
    helloFromGPU<<<1, 1>>>();

    // Wait for GPU to finish before exiting
    cudaDeviceSynchronize();

    return 0;
}
