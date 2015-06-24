clc
clear

//Input data
u=900*(5/18) //Flight velocity in m/s
ma=3000/60 //Mass flow rate of air in kg/s
dh=200 //Enthalpy drop of nozzle in kJ/kg
eff_n=0.9 //Nozzle efficiency 
AFR=85 //Air fuel ratio 
eff_cc=0.95 //Combustion efficiency
CV=42000 //Calorific value in kJ/kg

//Calculation
mf=ma/AFR //Mass flow rate of fuel in kg/s
m=ma+mf //Mass flow rate of gas in kg/s
Cj=sqrt(2*eff_n*dh*10^3) //Jet velocity in m/s
sig=u/Cj //Jet speed ratio 
F=((m*Cj)-(ma*u))*10^-3 //Thrust in kN
Pt=F*u //Thrust power in kW
Pp=0.5*((m*Cj^2)-(ma*u^2))*10^-3 //Propulsive power in kW
HS=eff_cc*mf*CV //Heat supplied in kW
eff_ther=(Pp/HS)*100 //Efficiency of turbine in %
eff_prop=(Pt/Pp)*100 //Propulsive efficiency of the cycle in %
eff=(Pt/HS)*100 //Overall efficiency in %

//Output
printf('(A)Propulsive power is %3.2f kW\n (B)Thrust power is %3.1f kW\n (C)Propulsive efficiency is %3.3f percent\n (D)Thermal efficiency is %3.2f percent\n (E)Total fuel consumption is %3.3f kg/s\n (F)Overall efficiency is %3.3f percent',Pp,Pt,eff_prop,eff_ther,mf,eff)
