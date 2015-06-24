clc
clear

//Input data
u=300 //Flight velocity in m/s
Pi=35 //Inlet pressure in kPa
Ti=-40+273 //Inlet temperature in K
pr_c=10 //Pressure ratio of compressor
T3=1100+273 //Inlet turbine temperature in K
m=50 //Mass flow rate of air in kg/s
k=1.4 //Adiabatic constant of air
Cp=1005 //Specific heat capacity at constant pressure of air in J/kg-K
R=287 //Specific gas constant in J/kg-K

//Calculation
ai=sqrt(k*R*Ti) //Sound velocity at diffuser in m/s
C1=u //Velocity of air in m/s, Since it is reaction force of u
T1=Ti+(C1^2/(2*Cp)) //Temperature at inlet of compressor in K
P1=Pi*((T1/Ti)^(k/(k-1))) //Inlet pressure of compressor in kPa
P2=pr_c*P1 //Exit pressure of compressor in kPa
P3=P2 //Exit pressure of combustion chamber in kPa, Since the process takes place at constant pressure process 
T2=T1*(P2/P1)^((k-1)/k) //Exit temperature of compressor in K
T4=T3-(T2-T1) //Exit temperature of turbine in K
P4=P3/((T3/T4)^(k/(k-1))) //Pressure at outlet of turbine in kPa
Pe=Pi //Exit pressure in kPa, Since exit is at ambient conditions
pr_n=P4/Pe //Pressure ratio of nozzle
Te=T4/((pr_n)^((k-1)/k)) //Exit temperature of nozzle in K
Cj=sqrt(2*Cp*(T4-Te)) //Jet velocity in m/s
sig=u/Cj //Jet speed ratio 
eff_prop=((2*sig)/(1+sig))*100 //Propulsive efficiency of the cycle in %

//Output
printf('(A)Temperature and pressure of gases at turbine exit is %3.2f K and %3i kPa\n (B)Velocity of gases is %3.2f m/s\n (C)Propulsive efficiency of the cycle is %3.2f percent',T4,P4,Cj,eff_prop)
