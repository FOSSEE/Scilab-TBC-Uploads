//page no 229
//example no 7.7
// INCREMENT & DECREMENT.
clc;
disp('LXI H,2040H'); // loads HL register pair.
disp('H=20H     L=40H');
disp('MVI M,59H'); 
M=59;
M=hex2dec(['59']);
disp('2040H-->59H')
disp('INR M');
M=M+1; // increments the value at the memory location by 1.
m=dec2hex(M);
printf('\n Content of 2040H after increment= ');
disp(m);
disp('INX H'); //takes the program to the next memory location.
disp('H=20H     L=41H');
disp('MVI M,90H');
M=90;
M=hex2dec(['90']);
disp('2041H-->90H');
disp('DCR M');
M=M-1; //decrements the value at the memory location by 1.
m=dec2hex(M);
printf('\n Content of 2041H after decrement= ');
disp(m);
