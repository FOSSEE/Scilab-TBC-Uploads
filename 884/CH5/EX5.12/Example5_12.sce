//Gas Stoichiometry

clear;
clc;

printf("\t Example 5.12\n");

R=0.0821;//universal Gas constant, L.atm/K.mol
T=80+273;//temp in K
P=823/760;//pressure in atm
m=60;//mass of NaN3, g
NaN3=65.02;//mol. mass of NaN3, g
nN2=m*3/(2*NaN3);//moles of N2
VN2=nN2*R*T/P;//from ideal gas law

printf("\t the volume of N2 generated is : %4.1f L\n",VN2);


//End
