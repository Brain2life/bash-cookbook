# Calculate network, broadcast addresses, subnet mask and number of availalbe hosts from IP CIDR range
The script takes an IP address in CIDR notation as input and calculates the corresponding subnet mask,
network address, and broadcast address. Use `--hosts` option to also calculate the number of usable hosts.

## Installation
1. Add execution permissions for the script:
```bash
chmod +x cidrcalc
```
2. Move to the local bin folder:
```bash
sudo mv cidrcalc /usr/local/bin/
```

## Command options
```
--hosts               Calculate and display the number of usable hosts in the subnet.
--help                Display help message.
```

## Usage
1. To calculate IP network, broadcast addresses and subnet mask:
```bash
cidrcalc 141.63.16.189/21
```
2. To calculate the number of available hosts in the subnet (optionally):
```bash
cidrcalc 141.63.16.189/21 --hosts
```

## Script explanation
**Input Handling**: The script starts by checking if it has at least one argument; if not, it shows the help information and exits. It specifically checks for the `--help` flag to display usage instructions.

**IP/CIDR Parsing**: Splits the input argument into the IP address and CIDR prefix using cut and assigns them to variables.

**Calculation and Display**: Uses the cidr_to_mask function to calculate the subnet mask from the CIDR prefix, then calculates the network address and broadcast address using their respective functions. It displays these values.

**Optional Host Calculation**: If the `--hosts` flag is provided, calculates the number of usable hosts in the subnet by subtracting 2 from 2^(32 - CIDR) (to exclude the network and broadcast addresses) and displays this number.
