clc
clear

//Input data
eff_com=0.8 //Compressor efficiency
eff_t=0.85 //Turbine efficiency
pr=4 //Pressure ratio including combustion pressure loss(Po2s/Po1)
eff_c=0.98 //Combustion efficiency
eff_m=0.99 //Mechanical transmission efficiency 
eff_n=0.9 //Nozzle efficiency 
Tmax=1000 //Maximum cycle temperature in K
To3=Tmax //Stagnation temperature before turbine inlet in K
w=220 //mass flow rate in N/s
Cp_air=1005 //Specific heat capacity at constant pressure in J/kg-K
k=1.4 //Adiabatic constant for air
Cp_gas=1153 //Specific heat capacity at constant pressure in J/kg-K
k_gas=1.3 //Adiabatic constant
To1=15+273 //Inlet Stagnation temperature of compressor in K
Po1=1 //Inlet Stagnation pressure in bar
Poe=Po1 //Exit stagnation pressure in bar, Since exit at ambient conditions
g=9.81 //Acceleration due to gravity in m/s^2

//Calculation  
To2s=To1*(pr)^((k-1)/k) //Exit Stagnation temperature of compressor at isentropic process in K
To2=((To2s-To1)/eff_com)+To1 //Exit Stagnation temperature of compressor in K
Wc=(Cp_air*(To2-To1)) //Work given to compressor in J/kg, Cp in J/kg-K
To4=To3-(Wc/Cp_gas*eff_m) //Exit Stagnation temperature of turbine in K
To4s=To3-((To3-To4)/eff_t) //Exit Stagnation temperature of turbine at isentropic process in K
Po2=Po1*pr //Exit Stagnation pressure of compressor in bar
Po3=Po2 //Exit Stagnation pressure of combustion chamber in bar, Since the process takes place at constant pressure process 
p1=(To3/To4s)^(k_gas/(k_gas-1)) //Stagnation Pressure ratio of inlet and outlet of turbine  
Po4s=Po3/p1 //Stagnation Pressure at outlet of turbine at isentropic process in bar  
pr_n=Po4s/Poe //Pressure ratio of nozzle
Toes=To4/((pr_n)^((k_gas-1)/k_gas)) //Exit Stagnation temperature of nozzle at isentropic process in K
Toe=To4-((To4-Toes)*eff_n) //Exit Stagnation temperature of nozzle in K
Cj=sqrt(2*Cp_gas*(To4-Toe)) //Jet velocity in m/s
m=w/g //Mass flow rate of air in kg/s
F=m*Cj*10^-3 //Thrust in kN
Fs=(F*10^3)/m  //Specific thrust in Ns/kg, F in N
Is=F/w //Specific impulse in sec

//Output
printf('(A)Thrust is %3.3f kN\n (B)Specific thrust is %3.2f Ns/kg',F,Fs)
