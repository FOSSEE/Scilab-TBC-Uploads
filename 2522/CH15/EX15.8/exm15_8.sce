// page no 502
// example no 15.8
// INITIALIZATION INSTRUCTIONS FOR DMA
clc;
printf('MVI A,00000100B \n \n');
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('0  0  0  0  0  1  0  0 \n');
printf('A2=1        Disable DMA \n \n');
printf('OUT 08H \n');
printf('MVI A,00000111B \n \n');
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('0  0  0  0  0  1  1  1 \n');
printf('A7,A6=00    Demand mode  \n');
printf('A5=0        Increment address \n');
printf('A4=0        Disable auto load \n');
printf('A3,A2=01    Write \n');
printf('A1,A0=11    Ch 3 \n \n');
printf('OUT 0BH \n');            // Send to mode reg.
printf('MVI A,75H \n');          // Low order byte of starting address
printf('OUT 06H \n');            // Output to CH3 memory address reg.
printf('MVI A,40H \n');          // High order byte of starting address
printf('OUT 06H \n');            // Output to CH3 memory address reg.
printf('MVI A,FFH \n');          // Low order byte of the count 03FFH
printf('OUT 07H \n');            // Output to CH3 count reg.
printf('MVI A,03H \n');          // High order byte of the count 03FFH
printf('OUT 07H \n');            // Output to CH3 count reg.
printf('MVI A,10000000B \n \n');
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('1  0  0  0  0  0  0  0 \n');
printf('A7,A6=10    DACK DREQ High  \n');
printf('A5=0        Late write \n');
printf('A4=0        Fixed priority \n');
printf('A3=0        Normal time \n');
printf('A2=0        DMA enable \n')
printf('A0=0        Disable mem to mem \n \n');
printf('OUT 08H \n');
