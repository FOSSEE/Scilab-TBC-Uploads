clc
clear

//Input data
P1=3.2 //Initial Pressure in bar
P2=1 //Final Pressure in bar
T1=475 //Initial temperature in K
Mol=44 //Molecular weight of carbondioxide in kg/mol
Ri=8314 //Ideal gas constant in J/mol-K
k=1.3 //Adiabatic constant

//Calculation
R=Ri/Mol //Specific gas constant in J/kg-K
Cp=(k*R)/(k-1) //Specific heat capacity at constant pressure in J/kg-K
Cv=Cp/k //Specific heat capacity at constant volume in J/kg-K
p1=P2/P1 //Pressure ratio
T2=T1*p1^((k-1)/k) //Final Temperature
dh=Cp*(T1-T2)*10^-3 //Enthalpy drop in kJ/kg
dU=Cv*(T2-T1)*10^-3 //Change in internal energy in kJ/kg, -ve sign indicates loss

//Output
printf('(A)Temperature is %3.3f K\n (B)Enthalpy drop is %3.3f kJ/kg\n (C)Change in internal energy is %3.2f kJ/kg i.e. %3.2f kJ/kg(loss)',T2,dh,dU,abs(dU))
