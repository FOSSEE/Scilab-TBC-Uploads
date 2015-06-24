clc
clear

//Input data
M=0.8 //Mach number 
CV=42800 //Calorific value in kJ/kg
h=10 //Altitude in km
F=50 //Thrust in kN
ma=45 //Mass flow rate of air in kg/s
mf=2.65 //Mass flow rate of fuel in kg/s

//Calculation
m=ma+mf //Mass flow rate of gas in kg/s
a=299.6 //Sound velocity in m/s, from gas tables
T=233.15 //Inlet temperature in K 
u=a*M //Flight velocity in m/s
Cj=((F*10^3)+(ma*u))/m //Jet velocity in m/s
sig=u/Cj //Jet speed ratio 
Fs=F*10^3/m //Specific thrust in Ns/kg, F in N
TSFC=mf*3600/(F*10^3) //Thrust specific fuel consumption in kg/N-hr, F in N
Pt=F*u //Thrust power in kW
Pp=0.5*((m*Cj^2)-(ma*u^2))*10^-3 //Propulsive power in kW
HS=mf*CV //Heat supplied in kW
eff_ther=(Pp/HS)*100 //Efficiency of turbine in %
eff_prop=(Pt/Pp)*100 //Propulsive efficiency of the cycle in %
eff=(Pt/HS)*100 //Overall efficiency in %

//Output 
printf('(A)Specific thrust is %3.2f N/kg\n (B)Thrust specific fuel consumption is %3.4f kg/N-hr\n (C)Jet velocity is %3.3f m/s\n (D)Thermal efficiency is %3.2f percent\n (E)Propulsive efficiency is %3.3f percent\n (F)Overall efficiency is %3.2f percent',Fs,TSFC,Cj,eff_ther,eff_prop,eff)
