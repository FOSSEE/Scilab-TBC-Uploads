// Exa 4.2
format('v',6)
clc;
clear;
close;
// Given data
C1= 5*10^-12;// in F
C2= 5*10^-12;// in F
L= 10*10^-3;// in H
C_Tmin= C1*C2/(C1+C2);// in F
f_omax= 1/(2*%pi*sqrt(L*C_Tmin));// in Hz
C1= 50*10^-12;// in F
C2= 50*10^-12;// in F
C_Tmax= C1*C2/(C1+C2);// in F
f_omin= 1/(2*%pi*sqrt(L*C_Tmax));// in Hz
f_omax= f_omax*10^-6;// in MHz
f_omin= f_omin*10^-3;// in kHz
disp(f_omax,"The maximum value of resonant frequency in MHz is : ")
disp(f_omin,"The minimum value of resonant frequency in kHz is : ")

