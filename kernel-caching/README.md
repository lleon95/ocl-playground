# The very same Vector-Add OpenCL program but with caching

This:

* Takes the kernel as text and compiles it
* Takes the kernel as binary
* Builds it
* Runs it

Nothing more than that. Take it as a reference when starting.

## Running on NVIDIA?

Please add the following before make

```bash
CUDA_VERSION=11.0
PLATFORM=$(uname -m)
export OPTIONS="-I/usr/local/cuda-${CUDA_VERSION}/targets/${PLATFORM}-linux/include -L/usr/local/cuda-${CUDA_VERSION}/lib64"
```

## Compile

```bash
make
```

## Run

```bash
# Compilation mode:
./main 1
# Binary run:
./main
```

Some times: not too much difference:

* Compilation: 0.15645
* Caching: 0.1548

Perhaps kernel size?

Based on:

* http://www.eriksmistad.no/getting-started-with-opencl-and-gpu-computing/
* https://stackoverflow.com/questions/7338718/how-to-use-clcreateprogramwithbinary-in-opencl
