//example 10.8//
clc
//clears the screen//
clear
//clears all existing variables//
vt=.001;
//voltage threshold in V//
aiv=4.012;
//analog input voltage in V//
qe=10/2/1000;
//quantization error = 1/2LSB in (V)//
aiv2=aiv+vt;
//analog input voltage at other input//
o=aiv2-qe;
//D/A converter voltage//
n=o/(10*10^-3);
//number of steps//
n1=round(n);
//rounding off for number of steps//
dob=dec2bin(n1);
//digital output in binary equivalent//
disp(dob,'Digital output in digital form =')