clc
clear

//Input data
u=750*(5/18) //Flight velocity in m/s
h=10000 //Altitude in m
eff_p=0.5 //Propulsive efficiency of the cycle
eff_o=0.16 //Overall efficiency
d=0.173 //Density in kg/m^3
F=6250 //Thrust in N
CV=45000 //Calorific value in kJ/kg

//Calculation
sig=eff_p/(2-eff_p) //Jet speed ratio
Cj=u/sig //Jet velocity in m/s
Ca=Cj-u //Absolute Jet velocity in m/s
ma=F/Ca //Mass flow rate of air in kg/s
Q=ma*60/d //Volume flow rate in m^3/min
A=Q/(Cj*60) //Area of flow in m^2
D=sqrt((4*A)/(%pi))*10^3 //Diameter in mm
Pt=F*u //Thrust power in W
Pp=(Pt/eff_p)*10^-3  //Propulsive power in kW
eff_t=eff_o/eff_p //Efficiency of turbine
HS=Pp/eff_t //Heat supplied in kJ/s
mf=HS/CV //Mass flow rate of fuel in kg/s
AFR=ma/mf //Air fuel ratio 

//Output
printf('(A)Absolute velocity of the jet is %3.2f m/s\n (B)Volume of air compressed per minute is %3.2f m^3/min\n (C)Diameter of the jet is %3i mm\n (D)Power unit of the unit is %3.3f kW\n (E)Air fuel ratio is %3.1f',Ca,Q,D,Pp,AFR)
