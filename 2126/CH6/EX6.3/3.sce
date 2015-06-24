clc
clear

//Input data
Mi=0.8 //Inlet mach number 
h=10000 //Altitude in m
pr_c=8 //Pressure ratio of compressor
To3=1200 //Stagnation temperature at turbine inlet in K
eff_c=0.87 //Compressor efficiency
eff_t=0.9 //Turbine efficiency
eff_d=0.93 //Diffuser efficiency 
eff_n=0.95  //Nozzle efficiency 
eff_m=0.99 //Mechanical transmission efficiency
eff_cc=0.98 //Combustion efficiency
pl=0.04 //Ratio of combustion pressure loss to compressor delivery pressure 
k=1.4 //Adiabatic constant of air
R=287 //Specific gas constant in J/kg-K
k_g=1.33 //Adiabatic constant of gas 
Cp_a=1005 //Specific heat capacity at constant pressure of air in J/kg-K
Cp_g=1100 //Specific heat capacity at constant pressure of gas in J/kg-K
CV=43000000 //Calorific value in J/kg (Assume)

//Calculation
Ti=223.15 //Inlet temperature in K from gas tables
Pi=26.4 //Inlet pressure in kPa from gas tables 
ai=sqrt(k*R*Ti) //Sound velocity in m/s
Ci=ai*Mi //Velocity of air in m/s,
u=Ci //Flight velocity in m/s, Since it is reaction force of Ci
t1=0.886 //Ratio of static to stagnation temperature a entry from gas tables at M=0.8 
To1s=Ti/t1 //Stagnation temperature at inlet of compressor at isentropic process in K
To1=((To1s-Ti)/eff_d)+Ti //Stagnation temperature at inlet of compressor in K
p1=(To1s/Ti)^(k/(k-1)) //Pressure ratio i.e. (Po1s/Pi)
Po1s=Pi*p1 //inlet Stagnation pressure of compressor at isentropic process in kPa
Po1=Po1s //Inlet Stagnation pressure of compressor in kPa
Po2=pr_c*Po1 //Exit Stagnation pressure of compressor in kPa
To2s=To1s*(Po2/Po1)^((k-1)/k) //Exit Stagnation temperature of compressor at isentropic process in K
To2=((To2s-To1)/eff_c)+To1 //Exit Stagnation temperature of compressor in K
P_los=pl*Po2 //combustion pressure loss in kPa
Po3=Po2-P_los //Exit Stagnation pressure of combustion chamber in kPa
To4=To3-((Cp_a*(To2-To1))/(eff_m*Cp_g)) //Exit Stagnation temperature of turbine in K
To4s=To3-((To3-To4)/eff_t) //Exit Stagnation temperature of turbine at isentropic process in K
p1=(To3/To4s)^(k_g/(k_g-1)) //Pressure ratio i.e. (Po3/Po4s)
Po4s=Po3/p1 //Stagnation Pressure at outlet of turbine at isentropic process in kPa
Poe=Pi //Exit stagnation pressure in kPa, Since exit is at ambient conditions
pr_n=Po4s/Poe //Pressure ratio of nozzle
Toes=To4/((pr_n)^((k_g-1)/k_g)) //Exit Stagnation temperature of nozzle at isentropic process in K
Toe=To4-((To4-Toes)*eff_n) //Exit Stagnation temperature of nozzle in K
Cj=sqrt(2*Cp_g*(To4-Toe)) //Jet velocity in m/s
Fs=Cj-u //Specific thrust in Ns/kg
f=((Cp_g*To3)-(Cp_a*To2))/((eff_cc*CV)-(Cp_g*To3)) //Fuel-air ratio
TSFC=(f/Fs)*10^5 //Thrust specific fuel consumption in kg/s-N x10^-5

//Output
printf('(A)Specific thrust is %3.2f Ns/kg\n (B)Thrust specific fuel consumption is %3.3fx10^-5 kg/s-N',Fs,TSFC)
