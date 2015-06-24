clc
clear

//INPUT
t=304;//temperature of the gas in k
p=73;//pressure of the gas in atm
r=0.00366;//universal gas constant in j/K/mole
//ct=8a/27br;cp=a/27b^2

//CALCULATIONS
b=(t*r/(8*p));
a=p*27*b^2;

//OUTPUT
mprintf('the value of the constant b is %3.7f \n the value of the constant a is %3.5f',b,a)
