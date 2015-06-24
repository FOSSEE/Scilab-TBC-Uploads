//page no 41
//example no 2.2
//MEMORY ADDRESS RANGE.
clc;
printf('A9-A0 are  address lines for register select. \n');
printf('A15-A10 are address lines for chip select. \n \n');
printf('A15 A14 A13 A12 A11 A10 \n');
printf(' 0  0   0   0   0  0 \n \n'); //chip select bits have to be active low always to select that chip.
printf('A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf(' 0  0  0  0  0  0  0  0  0  0  \n'); //this selects the register 
printf('The above combination selects the memory address 0000H. \n \n');
printf('A15 A14 A13 A12 A11 A10 \n');
printf(' 0  0   0   0   0  0 \n \n'); //chip select bits have to be active low always to select that chip.
printf('A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf(' 1  1  1  1  1  1  1  1  1  1  \n'); //this selects the register 
printf('The above combination selects the memory address 03FFH. \n \n');
//thus this chip can select any memory location from 0000H to 03FFH.
//the memory addressed of the chip can be changed by modifying the hardware.Like we did in the previous example.
