clc
clear

//Input data
M=0.2 //Mach number
To=120+273 //Stagnation Temperature in K
Cp=1005 //Specific heat capacity at constnat pressure in J/kg-K

//Calculation
t1=0.174 //Temperature ratio (To/Tot) from Rayleigh gas tables
Tot=To/t1 //Critical stagnation temperature in K
q=Cp*(Tot-To)*10^-3 //Maximum amount of heat transfer in kJ/kg

//Output
printf('Maximum amount of heat transfer is %3.2f kJ/kg',q)
