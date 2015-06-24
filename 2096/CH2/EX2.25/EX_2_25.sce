//Example 2.25//capacitance ,power factor and relative permittivity
clc;
clear;
f=50;//in hertz
C2=106;//capacitance in pico farad
R4=(1000/%pi);//IN OHMS
C4=0.055;//in micro farads
R3=270;//in ohms
R1= (R3*C4*10^-6)/(C2*10^-12);// IN OHMS
C1=(R4*C2*10^-12)/(R3);//in farads
pf=2*%pi*f*R1*C1*10^-12;//
Eo=8.854*10^-12;//
a= (%pi*12^2)/(4*100^2);//in meter square 
t=0.005;//THICKNESS IN METER
Er= ((C1*t)/(Eo*a));//relative permittivity
disp(C1*10^12,"capacitance in pico farad ")
disp(pf*10^13,"power factor is")
disp(Er,"realtive permittivity is")
