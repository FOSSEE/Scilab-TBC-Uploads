//Example 7.6 // the sensitivity and resolution
clc;
clear;
close;
//given data : 
Vo=1.8; // output voltage
D=0.6; // displacement
S=Vo/D;
Af=500; // amplification factor
Sm=Af*S; // in mV/mm
V=4000; // in mili-volts
Sd=V/100; // one scale division
Vmin=(1/4)*Sd; // scale can be read to 1/4 of a division
R=Vmin*(1/Sm);
disp(S,"sensitivity of LVDT,S(mV/mm) = ")
disp(R,"resolution,R(mm) = ")
