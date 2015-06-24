clc
clear

//Input data
M1=1.5 //Mach number  
h=6500 //Altitude in m
D=0.5 //Diameter in m 
To4=1600 //Stagnation temperature at nozzle inlet in K
CV=40000 //Calorific value in kJ/kg
k=1.4 //Adiabatic constant of air
R=287 //Specific gas constant in J/kg-K
eff_d=0.9 //Diffuser efficiency 
eff_cc=0.98 //Combustion efficiency
eff_n=0.96 //Nozzle efficiency 
pr_l=0.02 //Pressure ratio i.e. Stagnation pressure loss to Exit presure of compressor
Cp=1005 //Specific heat capacity at constant pressure of air in J/kg-K

//Calculation
P1=0.44 //Inlet pressure of compressor in bar
T1=245.9  //Temperature at inlet of compressor in K
a1=314.5 //Sound velocity at compressor in m/s 
d1=0.624 //Density at compressor in kg/m^3 
A1=0.25*%pi*D^2 //Area at diffuser inlet in m^2
u1=M1*a1 //Flight velocity in m/s
ma=d1*A1*u1 //Mass flow rate of air in kg/s
To2=T1*(1+(((k-1)/2)*M1^2)) //Stagnation temperature at commpressor inlet in K
To1=To2 //Stagnation temperature at commpressor outlet in K, (It is in case of diffuser)
pr_d=((eff_d*(((k-1)/2)*M1^2))+1)^(k/(k-1)) //Pressure ratio of diffuser 
P2=pr_d*P1 //Exit pressure of compressor in bar
Po2=P2 //Stagnation pressure at exit of compressor in bar 
Po3=(Po2-(pr_l*Po2)) //Stagnation pressure at exit of combustion chamber in bar 
Poe=P1 //Exit stagnation pressure in kPa, Since exit is at ambient conditions
pr_n=Po3/Poe //Pressure ratio of nozzle
p1=1/pr_n //Inverse of pr_n to find in gas tables 
M4s=1.41 //Mach number at turbine exit  from gas tables 
T4s=To4/(1+((0.5*(k-1)*M4s^2))) //Exit temperature of turbine at isentropic process in K
To3=To4 //Stagnation temperature at inlet turbine in K,
T4=To3-(eff_n*(To3-T4s)) //Exit temperature of turbine in K
C4=sqrt(2*Cp*(To4-T4)) //Flight velocity of air in m/s
a4=sqrt(k*R*T4) //Sound velocity in m/s
Me=C4/a4 //Nozzle jet mach number
f=(Cp*(To3-To2))/(eff_cc*CV*10^3) //Fuel air ratio
mf=ma*f //Mass flow rate of fuel in kg/s
m=ma+mf //Mass flow rate of gas in kg/s
eff_i=(1/(1+((2/(k-1))*(1/M1^2))))*100 //Efficiency of the ideal cycle in %
sig=u1/C4 //Jet speed ratio 
eff_p=((2*sig)/(1+sig)) //Propulsive efficiency in %
F=((m*C4)-(ma*u1))*10^-3 //Thrust in kN

//Output
printf('(A)Efficiency of the ideal cycle is %3i percent\n (B)Flight speed is %3.3f m/s\n (C)Air flow rate is %3.3f kg/s\n (D)Diffuser pressure ratio is %3.4f\n (E)Fuel air ratio is %3.5f\n (F)Nozzle pressure ratio is %3.2f\n (G)Nozzle jet mach number is %3.3f\n (H)Propulsive efficiency is %3.4f percent\n (I)Thrust is %3.3f kN',eff_i,C4,ma,pr_d,f,pr_n,Me,eff_p,F)
