// page no 414
// example no 14.1
// INITIALIZE HYPOTHETICAL CHIP AS OUTPUT BUFFER
clc;
printf('MVI A,01H \n');    // Set D0=1, D1 through D7 are don't care lines.
a=hex2dec(['1']);
b=dec2bin(a,8);
printf('A--> ')
disp(b);
printf('\n \n OUT FFH \n \n');  // write in the control register.
printf('MVI A,BYTE1 \n \n');    // load data byte.
printf('OUT FEH');     // send data out.
