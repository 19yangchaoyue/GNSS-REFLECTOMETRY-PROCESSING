#include <fstream>
#include <iostream>
#include <cuda.h>
#include <stdio.h>
using namespace std;



int main() {
	//-------
	//DEVICE MANAGEMENT

	cudaDeviceReset();
	int count;
	cudaGetDeviceCount(&count);
	fprintf(stderr, "count devices: %i \n", count);
	for (int i = 0; i < count; i++) {
		cudaDeviceProp aa;
		cudaSetDevice(i);
		cudaGetDeviceProperties(&aa, i);

		
		
		fprintf(stderr, "Device %i ", i);
		fprintf(stderr, ":\n  Name: %s \n", aa.name);
		fprintf(stderr, "  maxThreadsPerBlock: %i \n", aa.maxThreadsPerBlock);
		
		size_t freeMem, totalMem;

		cudaMemGetInfo(&freeMem, &totalMem);

		fprintf(stderr, "  Memory: \n");
		fprintf(stderr, "   Free = %zu, Total = %zu\n", freeMem, totalMem);
	}
	
}