clc
clear

//Input data
u=960*(5/18) //Flight velocity in m/s
ma=54.5 //Mass flow rate of air in kg/s
dh=200 //Change of enthalpy for nozzle in kJ/kg
Cv=0.97 //Velocity coefficient 
AFR=75 //Air fuel ratio 
eff_cc=0.93 //Combustion efficiency
CV=45000 //Calorific value in kJ/kg

//Calculation
mf=ma/AFR //Mass flow rate of fuel in kg/s
Cj=Cv*sqrt(2*dh*10^3) //Jet velocity in m/s
F=ma*(Cj-u) //Thrust in kN
TSFC=mf*3600/(F) //Thrust specific fuel consumption in kg/Nhr
HS=mf*eff_cc*CV //Heat supplied in kJ/s
Pp=0.5*ma*(Cj^2-u^2)*10^-3 //Propulsive power in kW
Pt=F*u //Thrust power in kW
eff_p=Pt/(Pp*10^3) //Propulsive efficiency of the cycle
eff_t=Pp/HS //Efficiency of turbine
eff_o=Pt*10^-3/HS  //Overall efficiency

//Output
printf('(A)Exit velocity of the jet is %3.2f m/s\n (B)Fuel rate is %3.4f kg/s\n (C)Thrust specific fuel consumption is %3.5f kg/Nhr\n (D)Thermal efficiency is %3.3f\n (E)Propulsive power is %3.2f kW\n (F)Propulsive efficiency is %3.4f\n (G)Overall efficiency is %3.5f',Cj,mf,TSFC,eff_t,Pp,eff_p,eff_o)
