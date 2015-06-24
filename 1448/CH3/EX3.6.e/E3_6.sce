clc
//Initialization of variables
HH2O=-241.82 //kJ/mol
T1=25 //C
T2=100 //C
CpH2O=33.58 //J/K mol
CpH2=28.84 //J/K mol
CpO2=29.37  //J/K mol
//calculations
dCp=CpH2O-CpH2-0.5*CpO2
dH=HH2O+dCp*(T2-T1)/1000.
//results
printf('Enthalpy of fromation of water at 100 C is %.2f kJ/mol',dH)
