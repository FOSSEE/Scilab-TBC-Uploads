
clc
clear
//Input data
CO2=12.1;//The amount of carbondioxide released from the combustion in %
O2=3.8;//The amount of oxygen released from the combustion in %
CO=0.9;//The amount of carbonmonoxide released from the combustion in %
MO=32;//Molecular weight of Oxygen

//Calculations
a=83.2/3.76;//Equating moles for nitrogen from the equation 
b=(2*a)-(2*CO2)-(2*O2)-CO;//Equating moles for oxygen from the equation
x=CO2+CO;//Equating moles for carbon from the equation
y=2*b;//Equating moles for hydrogen from the equation
z=18.75;//Moles of Oxygen from the stoichiometric equation 
z1=a;//Moles of Oxygen from the combustion equation 
E=[(z1-z)/z]*100;//Percentage of excess air in%
A=(a*MO)/0.232;//Actual air supplied per mole of C13H23
Mc=179;//Molecular weight of C13H23
Af=A/Mc;//Air fuel ratio during the test

//Output
printf('(a) The air fuel ratio during the test = %3.2f \n (b) The excess or deficiency of air used = %3.0f Percentage of excess air used',Af,E)
