clc
clear

//Input data
Mx=7 //mach number upstream of shock
P=2 //pressure @Mx in bar
T=57+273 //Temperature @Mx in K
R=287 //Specific gas constant in J/kg-K

//Calculation 
p1=0.72 //Pressure ratio (Poy/Pox) from normal shock gas tables @Mx
ds=R*log(1/p1) //Irreversibility in J/kg-K

//Output
printf('Irreversibility is %3.2f J/kg-K',ds)
