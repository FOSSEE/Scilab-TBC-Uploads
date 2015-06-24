clc
clear

//Input data
u=10080*(5/18) //Flight velocity in m/s
Cj=1400 //Jet velocity in m/s
m=5 //Propellent flow in kg/s

//calculation
F=m*Cj*10^-3 //Thrust in kN
P=F*u*10^-3 //Thrust power in MW
sig=u/Cj //Jet speed ratio
eff=((2*sig)/(1+sig^2)) //Propulsive efficiency 

//Output
printf('Propulsive power is %3.1f MW\n Propulsive efficiency is %3.1f',P,eff)
