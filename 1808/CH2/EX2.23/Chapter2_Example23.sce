clc
clear
//INPUT DATA
//CH4+2O2=CO2+2H2O ;//STOICHIOMETRIC REACTION
//CASE I
//H2O in the products is liquid
//CASE II
//H2O in the products is gas
Hr=-74.87;//enthalpy of reactants
Hp1=-964.2;//enthalpy of products
Hp2=-876.18;//enthalpy of products
R=8.314*10^-3;//gas constant
t=298;//initial temperature in K

//CLCULATIONS
dH1=Hp1-Hr;//Enthalpy increase in MJ/kmol
dH2=Hp2-Hr
dU1=dH2-((1-3)*R*t);//internal energy in MJ/kmol 
dU=Hp2;//internal energy in MJ/kmol 

//OUTPUT
printf('Enthalpy increase is %3.2f MJ/kmol of CH4 \n internal energy increase is %3.2f  MJ/kmol of CH4 \n',dH2,dU1)
printf('H2O in the products and internal energy increase are same \n')
printf('np=nr')
