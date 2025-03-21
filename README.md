# Software Security - CyberChallenge 2025

## Setup

### pwntools
In order to install pwntools via pip you need to setup a python virtual environment

```
# if python not installed
apt update
apt install python3 python3-venv python3-dev python3-pip
```
Navigate to your working directory

```bash
python3 -m venv .venv
source .venv/bin/activate
```

```bash
pip install pwntools
```

Verify installation with:

```bash
pwn version
```

### Disassembler / Decompiler - **GHIDRA**
- [Official release](https://github.com/NationalSecurityAgency/ghidra/releases/tag/Ghidra_11.3.1_build)
- [Helper script for project setup](ghidra.py)

### Debugger
If not included in the VM setup you can install it [here](https://infosecwriteups.com/pwndbg-gef-peda-one-for-all-and-all-for-one-714d71bf36b8).

You can choose between **pwndbg** or **gef** (both are extensions of **gdb**)



