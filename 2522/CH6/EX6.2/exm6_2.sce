//page no 164
//example 6.2
//TO SWITCH ON SOME DEVICES
//let the switches which are ON are at bit no D0,D1,D2,D3,D6;
clc;
x=hex2dec(['4F']); //hexadecimal to decimal conversion
y=dec2bin(x); //decimal to binary conversion
printf('At output port 01H: '); //same input appears at the putput
disp(y);
printf('Value 1s are showing the devices are ON. \n')
printf('Value 0s are showing the devices are switched OFF.');
