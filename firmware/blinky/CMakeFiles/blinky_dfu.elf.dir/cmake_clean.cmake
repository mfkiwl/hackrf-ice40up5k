file(REMOVE_RECURSE
  "blinky_dfu.elf"
  "blinky_dfu.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang ASM C)
  include(CMakeFiles/blinky_dfu.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
