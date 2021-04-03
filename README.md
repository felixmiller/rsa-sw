Simple self-contained example to demonstrate SW based RSA signature verification on RV32IMC

**Build:**
`riscv32-unknown-elf-gcc  -Wall rsa_rv.c -o rsa_rv.elf`

**Simulate:**
`spike --isa=RV32IMC <path to pk>/pk rsa_rv.elf`