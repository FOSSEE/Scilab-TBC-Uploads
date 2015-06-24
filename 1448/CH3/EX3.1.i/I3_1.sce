clc
//Initialization of variables
dU=-969.6 //kJ/mol
nN2=1/2
nCO2=2
nO2=9/4
T=298.15 //K
//Calculations
n=nCO2+nN2-nO2
H=dU+n*8.3145*T/1000.
//results
printf('Enthalpy change =%.1f kJ/mol',H)
