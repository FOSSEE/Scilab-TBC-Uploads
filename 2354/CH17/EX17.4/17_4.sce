//example 17.4
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
Ts=128.4;
Tinfinity=26.2;
k=0.03;
D=0.0127;//m
Re=6071;//reynold's no
Pr=0.7;
qconv=46;
A=pi*0.0127*0.094;
h=0.85*qconv/A/(Ts-Tinfinity);
disp(h,"heat transfer coefficient in W/m^2-K");
Nu=0.3+0.62*Re^0.5*Pr^0.33/(1+0.4^0.66*Pr^0.66)^0.25*(1+(Re/282000)^0.625)^0.8;
hbar=Nu*k/D;
disp(Nu,"Nusselt no is")
disp(hbar,"heat transfer coefficient in W/m^2-K");
//using Hilpert correlation
Nu1=0.193*Re^0.618*Pr^0.333;
disp(Nu1,"Nusselt no is");
hbar1=Nu1*k/D;
disp(hbar1,"heat transfer coefficient in W/m^2-K");
clear()
