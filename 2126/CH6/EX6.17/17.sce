clc
clear

//Input data
ma=18 //Mass flow rate of air in kg/s
Mi=0.6 //Inlet mach number 
h=4600 //Altitude in m
Pi=55 //Inlet pressure in 
Ti=-20+273 //Inlet temperature in K
eff_d=0.9 //Diffuser efficiency 
pr_d=5 //Diffuser pressure ratio 
T3=1000+273 //Inlet turbine temperature in K
Pe=60 //Exit pressure in kPa
eff_c=0.81 //Compressor efficiency
eff_t=0.85 //Turbine efficiency
eff_n=0.915 //Nozzle efficiency
CV=46520 //Calorific value in kJ/kg
Cp=1005 //Specific heat capacity at constant pressure of air in J/kg-K
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
Ci=Mi*sqrt(k*R*Ti) //Velocity of air in m/s,
u=Ci //Flight velocity in m/s, Since it is reaction force of Ci
T1=Ti+(Ci^2/(2*Cp)) //Temperature at inlet of compressor in K
P1s=Pi*(T1/Ti)^(k/(k-1)) //Inlet pressure of compressor at isentropic process in kPa
P1=Pi+(eff_d*(P1s-Pi)) //Inlet pressure of compressor in kPa
P2=P1*pr_d //Outlet pressure of compressor in kPa
T2s=T1*(pr_d)^((k-1)/k) //Outlet temperature of compressor at isentropic process in K
T2=T1+((T2s-T1)/eff_c) //Exit temperature of compressor in K
Wc=Cp*(T2-T1)*10^-3 //Workdone on compressor in kJ/kg of air
Pc=ma*Wc //Power input in kW
Pt=Pc //Power out put of turbine for isentropic process in kW 
f=(T3-T2)/((CV*10^3/Cp)-T3) //Fuel air ratio
Wt=Wc //Workdone by the turbine in kJ/kg of air
T4=T3-(Wt*10^3/Cp) //Exit temperature of turbine in K
T4s=T3-((T3-T4)/eff_t) //Exit temperature of turbine at isentropic process in K
P3=P2 //Exit pressure of combustion chamber in kPa, Since the process takes place at constant pressure process
P4=P3*(T4s/T3)^(k/(k-1)) //Pressure at outlet of turbine in kPa
pr_n=P4/Pe //Pressure ratio of nozzle
Tes=T4/(pr_n)^((k-1)/k) //Exit temperature of nozzle  at isentropic process in K
Te=T4-(eff_n*(T4-Tes)) //Exit temperature of nozzle in K
Cj=sqrt(2*Cp*(T4-Te)) //Jet velocity in m/s
Ce=Cj //Flight velocity in m/s
ae=sqrt(k*R*Te) //Sound velocity at nozzle in m/s
Me=Ce/ae //Nozzle jet mach number
F=ma*(((1+f)*Cj)-u) //Thrust in N
P=F*u*10^-3 //Thrust power in kW

//Output
printf('(A)Power input of compressor is %3.2f kW\n (B)Power output of turbine is %3.2f kW\n (C)F/A ratio on mass basis is %3.4f\n (D)Exit mach number is %3.3f\n (E)Thrust is %3.2f N\n (F)Thrust power is %3.1f kW',Pc,Pt,f,Me,F,P)
