clc
clear
//Input data
T=800;//The given temperature in K
e=1;//The equivalence ratio 

//Calculations
hi=154.723;//Sensible Enthalpy for isooctane at 800 K in MJ/kmol 
ho=15.841;//Sensible Enthalpy for oxygen at 800 K in MJ/kmol 
hn=15.046;//Sensible Enthalpy for nitrogen at 800 K in MJ/kmol
nc=0.00058;//Number of kmoles of C8H18 for equivalence ratio for 1 kg of air 
no=0.00725;//Number of kmoles of oxygen for equivalence ratio for 1 kg of air 
nn=0.0273;//Number of kmoles of nitrogen for equivalence ratio for 1 kg of air 
Hs=(nc*hi)+(no*ho)+(nn*hn);//Total sensible enthalpy of reactants in MJ per kg of air
Hs1=Hs*1000;//Total sensible enthalpy of reactants in kJ per kg of air 
R=8.314;//Gas constant in kJ/kgK
n=nc+no+nn;//Total number of kmoles for 1 kg of air
Us=Hs-(n*R*10^-3*(T-298));//sensible internal energy of reactants in MJ per kg of air 
Us1=Us*1000;//sensible internal energy of reactants in kJ per kg of air

//Output
printf('Total sensible enthalpy of reactants = %3.1f kJ/kg air \n Sensible internal energy of reactants = %3.1f kJ/kg air ',Hs1,Us1)
