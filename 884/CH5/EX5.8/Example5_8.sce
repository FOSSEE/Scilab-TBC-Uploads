//Density Calulations

clear;
clc;

printf("\t Example 5.8\n");

//taking 1 mole of CO2
n=1;
R=0.0821;//universal gas constant, L. atm/K.mol
t=55;//temperature, C
T=t+273;//temperature, K
P=0.99;//.pressure, atm
M=44.01;//molar mass of CO2, g
d1=P*M/(R*T);//density of CO2, g/L

printf("\t the density of CO2 is : %4.2f g/L\n",d1);

//altenate method
//taking 1 mole of CO2
mass=M;//mass of CO2 in g =mol mass since we are considering 1 mole of CO2
V=n*R*T/P;//volume, L
d2=mass/V;//density=mass/volume, g/L


printf("\t (Alternate Method)the density of CO2 is : %4.2f g/L\n",d2);

//End
