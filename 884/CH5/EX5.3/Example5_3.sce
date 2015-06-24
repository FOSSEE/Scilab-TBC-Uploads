//Ideal Gas Equation

clear;
clc;

printf("\t Example 5.3\n");

V=5.43;//volume, L
t=69.5;//temperature, C
T=t+273;//temperature, K
n=1.82;//moles
R=0.0821;//universal gas constant, L.atm/(K.mol)
P=n*R*T/V;//pressure, atm

printf("\t the presuure in atmospheres is : %4.2f atm\n",P);

//End
