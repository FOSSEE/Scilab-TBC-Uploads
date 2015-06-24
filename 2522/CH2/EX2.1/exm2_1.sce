//page no 39
//example no 2.1
//MEMORY ADDRESS RANGE.
clc;
printf('A7-A0 are  address lines for register select. \n');
printf('A15-A8 are address lines for chip select. \n \n');
printf('A15 A14 A13 A12 A11 A10 A9 A8 \n');
printf(' 0  0   0   0   0   0   0  0   =00H \n \n'); //chip select bits have to be active low always to select that chip.
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf(' 0  0  0  0  0  0  0  0   =00H \n'); //this selects the register 00.
printf('The above combination selects the memory address 0000H. \n \n');
printf('A15 A14 A13 A12 A11 A10 A9 A8 \n');
printf(' 0  0   0   0   0   0   0  0   =00H \n \n'); //chip select bits have to be active low always to select that chip.
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf(' 1  1  1  1  1  1  1  1   =FFH \n'); //this selects the register FF.
printf('The above combination selects the memory address 00FFH. \n \n');
//thus this chip can select any memory location from 0000H to 00FFH.
//the memory addressed of the chip can be changed by modifying the hardware.For example if we remove the inverter on line A15.
printf('A15 A14 A13 A12 A11 A10 A9 A8 \n');
printf(' 1  0   0   0   0   0   0  0   =80H \n \n'); //chip select bits have to be active low always to select that chip.
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf(' 0  0  0  0  0  0  0  0   =00H \n'); //this selects the register 00.
printf('The above combination selects the memory address 8000H. \n \n');
//The memory address range from above change will be 8000H to 80FFH.
//Thus a memory can be assigned address in various locations over the entire map of 0000H to FFFFH.
