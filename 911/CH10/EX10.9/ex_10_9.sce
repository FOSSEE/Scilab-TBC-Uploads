//example 10.9//
clc
//clears the screen//
clear
//clears all existing variables//
aiv=4.365;
//analog input voltage in V//
r=10*10^-3;
//resolution//
s=aiv/r;
//no of steps//
sr=round(s);
//rounding off//
fi=sr-1;
//in case of successive approximation type A/D converter, the final analouge output of its D/A converter portion always settles at a value below the analogue input voltage to be digitized within the resolution of the converter//
d=dec2bin(fi)
disp(d,'Digital output for an analog input = ')