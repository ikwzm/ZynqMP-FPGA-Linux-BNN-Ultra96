ZynqMP-FPGA-Linux BNN for Ultra96
===========================================

ZynqMP-FPGA-Linux BNN (Binarized Neural Network) binary and test code for Ultra96

### Requirement

 * Board: Ultra96
 * OS: ZynqMP-FPGA-Linux ([https://github.com/ikwzm/ZynqMP-FPGA-Linux](https://github.com/ikwzm/ZynqMP-FPGA-Linux)) v2017.3 or v2018.2
 * https://github.com/Xilinx/BNN-PYNQ.git
 * https://github.com/Xilinx/xilinx-tiny-cnn.git

### File Description

#### Firmwares

  * bnn/firmwares/
    + ultra96/
      - cnvW1A1-ultra96.bin
      - cnvW1A2-ultra96.bin
      - cnvW2A2-ultra96.bin
      - lfcW1A1-ultra96.bin
      - lfcW1A2-ultra96.bin

#### Libraries

  * bnn/libraries/
    + ultra96/

Install
------------------------------------------------------------------------------------

### Downlowd from github

```
shell$ git clone git://github.com/ikwzm/ZynqMP-FPGA-Linux-BNN-Ultra96
shell$ cd ZynqMP-FPGA-Linux-BNN-Ultra96
shell$ git submodule init
shell$ git submodule update
```

Run
------------------------------------------------------------------------------------

	(T.B.D)

Build
------------------------------------------------------------------------------------

### Build Firmwares

  * [bnn/src/network/cnvW1A1/Readme.md](bnn/src/network/cnvW1A1/Readme.md)
  * [bnn/src/network/cnvW1A2/Readme.md](bnn/src/network/cnvW1A2/Readme.md)
  * [bnn/src/network/cnvW2A2/Readme.md](bnn/src/network/cnvW2A2/Readme.md)
  * [bnn/src/network/lfcW1A1/Readme.md](bnn/src/network/lfcW1A1/Readme.md)
  * [bnn/src/network/lfcW1A2/Readme.md](bnn/src/network/lfcW1A2/Readme.md)

### Build Libraries
