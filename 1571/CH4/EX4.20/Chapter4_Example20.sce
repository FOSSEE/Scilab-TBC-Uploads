clc
clear

//INPUT
k=5.64*10^-14;//kinetic energy of the hydrogen molecule ergs
t=273;//temperature of the oxygen molecule in K
r=8.32*10^7;//universal gas constant in ergs 

//CALCULATIONS
N=(3/2)*(r*t/k);//avagadro number

//OUTPUT
mprintf('the avagadro number is %3.2f',N)
