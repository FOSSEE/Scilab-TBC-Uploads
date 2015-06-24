clc
clear
//Input data
p=1;//Initial pressure in atm
T=300;//Initial temperature in K
Tc=2400;//To calculate the molefraction of the products at this temperature in K
KP1=3.866;//Natural logarithm of equilibrium constant at 2400 K for the equation 

//Calculations
K1=exp(KP1);//The value of equilibrium constant at 2400 K
nr=1+0.5;//The number of moles of reactants
Pp=(p*Tc)/(nr*T);//Pressure exercted on the products side per mole in atm/mole
a=0.098;//The dissociation of 1 mole of CO2
np=(a+2)/2;//The number of moles of products
xco=[2*(1-a)]/(2+a);//Mole fraction of CO2
xc=[2*a]/(2+a);//Mole fraction of CO
xo=a/(2+a);//Mole fraction of O2
PP=5.333*np;//Pressure of the product in bar

//output
printf('Mole fraction of the carbondioxide is %3.4f \n Mole fraction of the carbonmonoxide is %3.4f \n Mole fraction of oxygen is %3.4f \n Pressure of the product is %3.3f bar',xco,xc,xo,PP)
