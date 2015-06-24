//deviation from ideal behaviour

clear;
clc;

printf("\t Example 5.18\n");

//(a)
V=5.2;//volume, L
T=47+273;
n=3.5;
R=0.0821;//universal Gas constant, L.atm/K.mol
P=n*R*T/V;

printf("\t the pressure of NH3 gas from ideal gas equation is : %4.1f atm\n",P);

//(b)
a=4.17;//constant, atm.L2/mol2
b=0.0371;//constant, L/mol
Pc=a*n^2/V^2;//pressure correction term, atm
Vc=n*b;//volume correction term, L
P=n*R*T/(V-Vc)-Pc;//from van der waals equation, pressure, atm

printf("\t the pressure of NH3 gas from van der waals equation is : %4.1f atm\n",P);

//End
