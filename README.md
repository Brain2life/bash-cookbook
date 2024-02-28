# Converter from decimal to binary and vice versa

## Installation
1. Add execution permissions for the script:
```bash
chmod +x bdconvert
```
2. Move to the local bin folder:
```bash
sudo mv bdconvert /usr/local/bin/
```

## Command options
```
--decimal <number>    Specify a decimal number to convert to binary.
--binary <number>     Specify a binary number to convert to decimal.
--bits <length>       Specify bit length for decimal to binary conversion. Default is 8.
--help                Display this help message.
```

## Usage
1. To convert decimal numbers:
```bash
bdconvert --decimal 13
```
2. To convert from binary to decimal:
```bash
bdconvert --binary 10011010
```
3. Specify bit length for decimal to binary conversion. Default is 8:
```bash
bdconvert --decimal 13 --bits 6
```

## Script explanation
This script uses [bc](https://www.gnu.org/software/bc/manual/html_mono/bc.html), a command-line calculator, for the base conversion, and simple Bash string manipulation to ensure the binary output matches the specified bit length. If the decimal number requires more bits than specified, the output will exceed the specified bit length to ensure accuracy.