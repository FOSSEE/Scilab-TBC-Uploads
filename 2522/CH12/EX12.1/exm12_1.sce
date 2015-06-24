// page no 374
// example no 12.1
// ENABLE INTERRUPTS
clc;
printf('EI \n \n');   // enable interrupts
printf('MVI A,08H \n');
a=hex2dec(['8']);
b=dec2bin(a,8);
printf('A--> ')
disp(b);
printf('\n SIM \n \n');  // enable RST 7.5,6.5, and 5.5
printf('D3=1     SIM functional \n');
printf('D2=0     Enable RST 7.5 \n');
printf('D1=0     Enable RST 6.5 \n');
printf('D0=0     Enable RST 5.5 \n');
