// Exa 6.8
format('v',5)
clc;
clear;
close;
// Given data
h11 = 2;// in k ohm
h11 = h11 * 10^3;// in ohm
h12 = 0;
h21 = 80;
h22= 1*10^-3;// in mho
R_L= 10*10^3;// in ohm
B= 10/100;
Ri= 2;// in k ohm
R_Ldesh= (R_L*1/h22)/(R_L+1/h22);// in ohm
Av= h21*R_Ldesh/h11;
disp(Av,"Part (a) : The value of Av of the basic amplifier is : ")
D= 1+Av*B;
disp(D,"The value of densitivity factor is : ")
Avf= Av/(1+B*Av);
disp(Avf,"The value of Avf is : ")
Rif= (1+Av*B)*Ri;// in k ohm
disp(Rif,"The value of Rif in k ohm is : ")
