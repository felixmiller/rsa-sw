Simple self-contained example to demonstrate SW based RSA signature verification on RV32IMC

**Build:**
`riscv32-unknown-elf-gcc -O2 -fno-inline -march=rv32imc -Wall rsa_rv.c -o rsa_rv.elf`

with `-fno-inline` to preserve all subroutines in assemnly output, which
might be helpful to individually verify the subroutines. Remove flag if
not needed.

**Simulate:**
`spike --isa=RV32IMC <path to pk>/pk rsa_rv.elf`