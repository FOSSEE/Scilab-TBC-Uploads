// Exa 8.14
clc;
clear;
close;
format('v',5)
// Given data
R_E= 1;// in k ohm
h_ie= R_E;// in k ohm
h_fe= 100;// unit less
//V1= I1*[h_ie+(1+h_fe)*h_ie+(1+h_fe)^2*R_E]+I2*R_E       (i)
//V2= I1*(1+h_fe)^2*R_E + I2*R_E                                             (ii)
Z= [(h_ie+(1+h_fe)*h_ie+(1+h_fe)^2*R_E) R_E;(1+h_fe)^2*R_E R_E]
Z11= Z(1);// k ohm
Z21= Z(2);// k ohm
Z12= Z(3);// k ohm
Z22= Z(4);// k ohm
disp(Z11*10^-3,"The value of Z11 in M ohm is : ")
disp(Z12,"The value of Z12 in M ohm is : ")
disp(Z21*10^-3,"The value of Z21 in M ohm is : ")
disp(Z22,"The value of Z22 in M ohm is : ")
