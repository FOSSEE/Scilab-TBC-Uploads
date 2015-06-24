//Example 7// Acoustic power entering
clc;
clear;
close;
//given data :
A=1*2;// in m^2
a=80;// in dB
I0=10^-12;// in W/m^2
IbyI0=10^(80/10);
I=I0*IbyI0;
Ape=I*A;
disp(Ape,"Acoustic power entering the room,(Watt) = ")
