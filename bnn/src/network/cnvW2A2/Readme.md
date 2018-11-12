## Build cnvW2A2 Bit Stream File for Ultra96

### Build IP

```console
vivado% cd hls
vivado% vivado_hls -f run_hls.tcl
```

### Build Vivado Project

```console
vivado% cd project
vivado% vivado -mode batch -source create_project.tcl
```

### Implementation Project

```console
vivado% cd project
vivado% vivado -mode batch -source implementation.tcl
```

### Generate Bit Stream File


```console
vivado% cd project
vivado% bootgen -image firmware.bif -arch zynqmp -w -o ../../../../firmwares/ultra96/cnvW2A2-ultra96.bin
```

