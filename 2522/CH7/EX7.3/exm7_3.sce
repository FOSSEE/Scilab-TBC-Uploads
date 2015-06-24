//page no 220
//example no 7.3
// TRANSFER OF DATA BYTES TO ACCUMULATOR.
// Memory location 2050H has the data F7H.
clc;

// using MOV instruction.
//indirect addressing mode.
disp('LXI H,2050H');
printf('H=20H   L=50H \n \n'); // the 16-bit address of the data is loaded in HL register pair.
M=hex2dec(['F7']); // M is the memory location pointer of address 2050H.
printf('MOV A,M \n');
A=dec2hex(M);
printf('A= ');
disp(A); // the contents of the HL register pair are used as memory pointer to the location 2050H.

// using LDAX instruction.
// indirect addressing mode.
disp('LXI B,2050H');
printf('B=20H   C=50H \n \n'); // the 16-bit address of the data is loaded in BC register pair.
M=hex2dec(['F7']); // M is the memory location pointer of address 2050H.
printf('LDAX B \n');
A=dec2hex(M);
printf('A= ');
disp(A); // the contents of the BC register pair are used as memory pointer to the location 2050H.

// using LDA instruction.
// direct addressing mode.
printf('\n LDA 2050H \n'); //directly sends the data of memory location 2050H to accumulator.
printf('A= ');
disp(A);

