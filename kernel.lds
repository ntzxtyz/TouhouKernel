OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64", "elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(StartKernel)
SECTIONS
{
        . = 0xffff8000000000000 + 0x100000;
        .text :
        {
                _text = .;
                *(.text)
                _etext = .;
        }
        . = ALIGN(8);
        .data :
        {
                _data = .;
                *(.data)
                _edata = .;
        }
        . = ALIGN(8);
        .bss :
        {
                _bss = .;
                *(.bss)
                _ebss = .;
        }
        _end = .;
}