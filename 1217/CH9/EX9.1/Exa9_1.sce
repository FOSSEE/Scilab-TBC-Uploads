//Exa 9.1
clc;
clear;
close;
//given data
Iq=5;//in mA
Vo=18;//in volts
Vreg=15;//in volts
disp("we have to find the values of R1 & R2 which can be used with IC7815 to produce this voltage");
R1=Vreg/(10*Iq*10^-3);//in Ohms; Iq must be in Amperes here
R2=(Vo-Vreg)/(11*Iq*10^-3);//in Ohms; Iq must be in Amperes here
disp(R2,R1,"the values of R1 and R2 are : ");
