
clc 
clear
//Input data
CO2=11.5;//Percentage of carbondioxide present in combustion in %
O2=2.7;//Percentage of oxygen present in the combustion in %
CO=0.7;//Percentage of carbonmonoxide present in the combuston in %

//Calculations 
a=85.1/3.76;//Equating moles for nitrogen from the equation 
x=(CO2+CO)/3;//Equating moles for carbon from the equation 
b=[a-CO2-(CO/2)-O2]*2;//Equating moles for oxygen from the equation 
y=a/x;//Moles of oxygen supplied for one mole of propane gas
z=5;//Theoretically 5 moles of oxygen are required for reacting
E=[(y-z)/z]*100;//The excess of air supplied in %

//Output
printf('The percentage excess air used is = %3.1f percentage',E)
