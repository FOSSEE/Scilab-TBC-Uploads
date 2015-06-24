clear all; clc;
disp("Ex 6_6")
disp("Figure 6-17a shows exposed internal force in member CF")
//Summing moments about O and equating to zero
a1=45
a=a1*%pi/180
F_CF=((3*8)-(4.75*4))/(sin(a)*12)
printf('\n\n F_CF = %0.3f kN (C)',F_CF)
