# Just another Vector-Add OpenCL program

This:

* Takes the kernel as text
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

Based on:

http://www.eriksmistad.no/getting-started-with-opencl-and-gpu-computing/
