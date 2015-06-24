clc
clear

//Input data
Pa=1.3 //Pressure at section-A in bar
Ta=50+273 //Temperature at section-A in K
Pb=1 //Pressure at section-B in bar
Tb=13+273 //Temperature at section-B in K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
R=287 //Specific gas constant in J/kg-K

//Calculation
ds=((Cp*log(Tb/Ta))-(R*log(Pb/Pa)))*10^-3 //The change in the entropy is kJ/kg
//+ve sign indicates A to B
//-ve sign indicates B to A

//Output
printf('The change in the entropy is %3.4f kJ/kg\n Since value is -ve, process must takes place from B to A',ds)
