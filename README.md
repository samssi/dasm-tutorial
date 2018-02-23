# dasm-tutorial

## Prequisites

* dasm macro assembler: http://dasm-dillon.sourceforge.net/
* WinVice C64 emulator: http://vice-emu.sourceforge.net/
* TextEditor
## Using dasm cross assember

### Windows

Note: Powershell won't work with dasm! Use cmd instead!

#### Environment variables

Set following environment variables for ease of use to Windows path:
```
x:\dasm
x:\winvice-x.x-xxx
```

### Compiling the assembly code

```
dasm <source_file>.asm -o<target_file>.prg
```

### Running the compiled code on the WinVice emulator from command line

Starting and running the compiled program:

```
x64 <target_file>.prg
```

Starting the program on the C64 type in following command:
```
SYS 4096
```

Close the emulator when done!