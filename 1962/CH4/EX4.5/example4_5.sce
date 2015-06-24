
//example 4.5
//page 165
clc; funcprot(0);
// Initialization of Variable
//on solving A1V1=A2V2
k=0.25//V1/V2
pi=3.14;
Cd=0.95;
d=0.02;//diameter
//using bernaulli equation between these points
V2=sqroot(2.1582/(1-k^2));
Q=Cd*V2*pi*d^2/4;
disp(Q,"flow rate(m^3/s)=");
clear
