clc
clear

//Input data
n=2 //Number of jets
D=0.25 //Diameter of turbojet in m
P=3000 //Net power at turbojet in W
mf_kWh=0.42 //Fuel consumption in kg/kWh 
CV=49000 //Calorific value in kJ/kg
u=300 //Flight velocity in m/s
d=0.168 //Density in kg/m^3
AFR=53 //Air fuel ratio 

//Calculatioon
mf=mf_kWh*P/3600 //Mass flow rate of fuel in kg/s
ma=AFR*mf //Mass flow rate of air in kg/s
m=ma+mf //Mass flow rate of gas in kg/s
Q=m/d //Volume flow rate in m^3/s
Cj=(Q*4)/(2*%pi*D^2) //Jet velocity in m/s
Ca=Cj-u //Absolute Jet velocity in m/s
F=((m*Cj)-(ma*u))*10^-3 //Thrust in kN
eff=((F*u)/(mf*CV))*100 //Overall efficiency in %
eff_prop=((2*u)/(Cj+u))*100 //Propulsive efficiency of the cycle in %
eff_ther=(eff/eff_prop)*100 //Efficiency of turbine in %

//Output
printf('(A)Absolute velocity of jet is %3.3f m/s\n (B)Resistance of the plane is %3.4f kN\n (C)Overall efficiency is %3.2f percent\n (D)Efficiency of turbine is %3.3f percent',Ca,F,eff,eff_ther)
