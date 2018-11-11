## Build cnvW2A2 Bit Stream File for Ultra96

### Build IP

```console
vivado% cd cnvW2A2/hls
vivado% vivado_hls -f run_hls.tcl
```

### Build Vivado Project

```console
vivado% cd cnvW2A2/project
vivado% vivado -mode batch -source create_project.tcl
```

### Implementation Project

```console
vivado% cd cnvW2A2/project
vivado% vivado -mode batch -source implementation.tcl
```

### Generate Bit Stream File


```console
vivado% cd cnvW2A2/project
vivado% bootgen -image firmware.bif -arch zynqmp -w -o ../cnvW2A2.bin
```
