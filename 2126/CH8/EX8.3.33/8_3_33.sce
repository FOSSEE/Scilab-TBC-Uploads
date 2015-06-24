clc
clear

//Input data
Mi=2.2 //Inlet Mach number
T=100+273 //Temperature in K
Cp=1005 //Specific heat capacity at constnat pressure in J/kg-K

//Calculation
t1=0.508 //Temperature ratio (To/Tot) from isentropic gas tables @Mi
To=T/t1 //Stagnation Temperature in K
t2=0.756 //Temperature ratio (To/Tot) from Rayleigh gas tables @Mi
Tot=To/t2 //Critical stagnation temperature in K
q=Cp*(Tot-To)*10^-3 //Maximum amount of heat transfer in kJ/kg

//Output
printf('Maximum amount of heat transfer is %3.4f kJ/kg',q)
