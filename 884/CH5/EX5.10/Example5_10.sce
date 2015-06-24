//Computation of Molar Mass

clear;
clc;

printf("\t Example 5.10\n");

percentSi=33;//percent of Si in compound
percentF=67;//percent of F in compound
nSi=percentSi/28.01;//moles of Si in 100g compound
nF=percentF/19;//moles of F in 100g compound

P=1.7;//pressure, atm
T=35+273;//temp. in K
m=2.38;//mass, g
V=0.21;//volume, L
R=0.0821;//universal Gas constant, L.atm/K.mol
n=P*V/(R*T);//moles
M=m/n;//mol. mass=mass/moles, g/mol

printf("\t the molecular mass of given compound is : %4.0f g/mol\n",M);


//End
