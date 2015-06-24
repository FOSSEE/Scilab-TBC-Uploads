// page no 374
// example no 12.2
// RESET 7.5 INTERRUPT
clc;
printf('MVI A,18H \n');    // set D4=1
a=hex2dec(['18']);
b=dec2bin(a,8);
printf('A--> ')
disp(b);
printf('\n \n SIM');      // Reset 7.5 interrupt flip flop
