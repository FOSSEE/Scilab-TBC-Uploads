clc
clear
//INPUT DATA
//a.CH4 +b O2 + c N2=10 CO2 + 0.53 CO+2.37 O2 +d H2O +87.1 N2 // Stoichiometric equation for combustion of Methane
c=87.1;//Nitrogen balance
b=23.16;//(c/b)=3.76
d=21.60;//d=2a Hydrogen balance
a=10.54;//Carbon balance
//10.54.CH4 +23.16 O2 + 87.1 N2=10 CO2 + 0.53 CO+2.37 O2 +21.06 H2O +87.1 N2 // Stoichiometric equation for combustion of Methane
//CH4 +2.2 O2 + 8.27 N2=0.95 CO2 + 0.05 CO+0.225 O2 +2 H2O +8.27 N2 // Stoichiometric equation for combustion of Methane with 100 percent of air

//CALCULATIONS
N=(2.2+8.27)/1;//air fuel ratio on mole basis
M=N*29/(12+4);//air fuel ratio on mass basis
Nt=(2+7.52)*(29/16);//theoritical air fuel ratio
nt=(M/Nt)*100;//Percentage theoritical air

//OUTPUT
printf('(a) CH4 +2.2 O2 + 8.27 N2=0.95 CO2 + 0.05 CO+0.225 O2 +2 H2O +8.27 N2 \n')
printf('(b)The air fuel ratio is %3.2f kg of air/kg of fuel \n (c)Percentage theoritical air is %f ',M,nt)

