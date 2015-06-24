// page no 493
// example no 15.6
// EXPLANATION OF INSTRUCTIONS
clc;
printf('1) DI instruction disables the interrupts. \n \n');
printf('2) Command word 76H specifies the following parameters \n');
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('0  1  1  1  0  1  1  0       =76H \n');
printf('A7,A6,A5    Low order address bits \n');
printf('A3          Edge triggered \n');
printf('A2          Call address interval is four locations \n');
printf('A1          Single 8259A \n \n');
printf('Low order byte of the IR0 call address \n');
printf('A7 A6 A5 A4 A3 A2 A1 A0 \n');
printf('0  1  1  0  0  0  0  0       =60H \n');
printf('The address bits A4-A0 are supplied by 8259A. \n');
printf('Subsequent addresses are four locations apart eg. IR1=64H')
printf('3) Port address of the 8259SA for ICW1 is 80H, A0 should be at \n logic 0 & the other bits are determined by the decoder. \n \n');
printf('4) Command word ICW2 is 20H. \n \n');
printf('5) Port address of ICW2 is 81H, A0 should be at logic 1.');
