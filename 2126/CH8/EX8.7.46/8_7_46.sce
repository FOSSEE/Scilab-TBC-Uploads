clc
clear

//Input data
Cj=2700 //Jet velocity in m/s
u=1350 //Flight velocity in m/s
m=78.6 //Propellent flow in kg/s

//Calculation
F=m*Cj*10^-3 //Thrust in kN
P=F*u*10^-3 //Thrust power in MW
sig=u/Cj //Jet speed ratio
eff=((2*sig)/(1+sig^2))*100 //Propulsive efficiency in %

//Output
printf('Thrust is %3.1f kN\n Thrust power is %3.2f MW\n Propulsive efficiency is %3i percent',F,P,eff)
