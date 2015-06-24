//example 8.5
clc;funcprot(0);
//Initialization of Variable
V=220;//line voltage
f=50;//hertz
R=80;//load resistance
I=46;//TSM current
//calculation
Rs=V*2^.5/(I-V*2^.5/R);
disp(Rs,"snubbing resistnce in ohm:")
clear()
