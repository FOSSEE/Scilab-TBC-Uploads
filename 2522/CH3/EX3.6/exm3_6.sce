////page no 95
//example no 3.6
//MEMORY ADDRESS RANGE OF 8155.
clc;
printf('A7-A0 are address lines for register select. \n');
printf('A10-A8 address lines are dont care conditions. \n');
printf('A15-A11 are address lines for chip select. \n \n');
printf('A15 A14 A13 A12 A11 \n');
printf(' 0  0   1   0   0 \n \n'); //chip select bits have to be active low always to select that chip.
printf('A10 A9 A8 \n');
printf('0  0  1  \n \n'); //this is the don't care condition.
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('0  0  0  0  0  0  0  0  \n'); //this selects the register 
printf('The above combination selects the memory address 2100H. \n \n');
printf('A15 A14 A13 A12 A11 \n');
printf(' 0  0   1   0   0 \n \n'); //chip select bits have to be active low always to select that chip.
printf('A10 A9 A8 \n');
printf('0  0  1  \n \n'); //this is the don't care condition.
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('1  1  1  1  1  1  1  1  \n'); //this selects the register 
printf('The above combination selects the memory address 21FFH. \n \n');
//thus this chip can select any memory location from 2100H to 21FFH.
