// page no 420
// example no 14.2
// ADDRESS DETERMINATION OF GIVEN FIGURE
clc;
printf('To select the chip: \n \n');
printf('A15 A14 A13 A12 A11 \n');
printf(' 0   0   0   1   0 \n \n');
printf('A15,A14            Enable lines of 8205  \n');
printf('A13,A12,A11        Input logic to activate the putput line O4 of the 8205 \n \n');
printf('A15,A14,A13,A12,A11 = A7,A6,A5,A4,A3, = 2H \n \n');
printf('AD2   AD1   AD0  =  Address Ports \n');
printf(' 0     0     0   =  20H Control or status register \n');
printf(' 0     0     1   =  21H Port A \n');
printf(' 0     1     0   =  22H Port B \n');
printf(' 0     1     1   =  23H Port C \n');
printf(' 1     0     0   =  24H Timer LSB \n');
printf(' 1     0     1   =  25H Timer MSB \n \n');
printf('Port numbers in given figure thus range from 20H-25H');
