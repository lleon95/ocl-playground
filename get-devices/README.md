# Get Devices? Yes, just for info when having multiple

This:

* Loops on the available platforms
* Provides the names and capabilities
* It is written in C for convenience

Nothing more than that. Take it as a reference when starting.

## Running on NVIDIA?

Please add the following before make

```bash
CUDA_VERSION=11.0
PLATFORM=$(uname -m)
export OPTIONS = -I/usr/local/cuda-${CUDA_VERSION}/targets/${PLATFORM}-linux/include -L/usr/local/cuda-${CUDA_VERSION}/lib64
```

## Compile

```bash
make
```

Based on the script provided by:

Sivagnanam Namasivayamurthy
