//Gas Stoichiometry

clear;
clc;

printf("\t Example 5.13\n");

R=0.0821;//universal Gas constant, L.atm/K.mol
T=312;//temp in K
V=2.4*10^5;//volume, L
P1=7.9*10^-3;//pressure initial in atm
P2=1.2*10^-4;//pressure final in atm
Pdrop=P1-P2;//pressure drop, atm
n=Pdrop*V/(R*T);//moles of Co2 reacted
Li2CO3=73.89;//mol. mass of Li2CO3, g
mLi2CO3=n*Li2CO3;//mass of Li2CO3, g

printf("\t the mass of Li2CO3 formed is : %4.1f *10^3 g\n",mLi2CO3*10^-3);


//End
