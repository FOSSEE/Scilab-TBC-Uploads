////page no 91
//example no 3.5
//MEMORY ADDRESS RANGE OF 6116.
clc;
printf('A10-A0 are  address lines for register select. \n');
printf('A15-A11 are address lines for chip select. \n \n');
printf('A15 A14 A13 A12 A11 \n');
printf(' 1  0   0   0   1 \n \n'); //chip select bits have to be active low always to select that chip.
printf('A10 A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('0   0  0  0  0  0  0  0  0  0  0  \n'); //this selects the register 
printf('The above combination selects the memory address 8800H. \n \n');
printf('A15 A14 A13 A12 A11 \n');
printf(' 1  0   0   0   1 \n \n'); //chip select bits have to be active low always to select that chip.
printf('A10 A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('1   1  1  1  1  1  1  1  1  1  1  \n'); //this selects the register  
printf('The above combination selects the memory address 88FFH. \n \n');
//thus this chip can select any memory location from 8800H to 88FFH.
