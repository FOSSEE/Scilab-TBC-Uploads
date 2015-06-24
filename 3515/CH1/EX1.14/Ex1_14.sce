// Exa 1.14
format('v',7);
clc;
clear;
close;
// Given data
Vi_1= 150;// in µV
Vi_2= 140;// in µV
Vd= Vi_1-Vi_2;// in µV
Vd=Vd*10^-6;// in V
Vc= (Vi_1+Vi_2)/2;// in µV
Vc=Vc*10^-6;// in V
// Vo= Ad*Vd*(1+Vc/(CMRR*Vd))

// (i) For Ad=4000 and CMRR= 100
Ad=4000;
CMRR= 100;
Vo= Ad*Vd*(1+Vc/(CMRR*Vd));// in volt
Vo= Vo*10^3;// in mV
disp(Vo,"(i) Output voltage in mV")

// (ii) For Ad=4000 and CMRR= 10^5
Ad=4000;
CMRR= 10^5;
Vo= Ad*Vd*(1+Vc/(CMRR*Vd));// in volt
Vo= Vo*10^3;// in mV
disp(Vo,"(ii) Output voltage in mV")
