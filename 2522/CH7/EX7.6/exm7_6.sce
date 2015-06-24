//page no 228
//example no 7.6
// ARITHEMETIC OPERATIONS.
clc;
disp('A-->30H');
disp('2040H-->68H');
disp('2041H-->7FH');
disp('LXI H,2040H'); // loads HL register pair.
disp('H=20H     L=40H   M=68H'); 
disp('ADD M');
A=hex2dec(['30']);
M=hex2dec(['68']);
S=A+M; // adds the contents of A and data at memory location 2040H.
s=dec2hex(S);
printf('\n Content of A after addition with 2040H= ');
disp(s);
disp('INX H'); // takes the program to the next memory location.
disp('H=20H     L=41H   M=7FH'); 
disp('SUB M');
M=hex2dec(['7F']);
D=S-M; // subtracts the contents of A from the data at memory location 2041H.
d=dec2hex(D);
printf('\n Content of A after subtraction with 2041H= ');
disp(d);
