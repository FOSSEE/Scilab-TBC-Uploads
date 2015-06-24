clc
clear

//input data 
Cj=2700 //average effective jet velocity in m/s
u=1350 //forward flight velocity in m/s
mp=78.6 //propellant mass flow in kg/s

//calculation
s=u/Cj //effective jet speed ratio
np=(2*s)/(1+s^2) //propulsive efficiency
F=Cj*mp*10^-3 //thrust in kN
Pt=F*u*10^-3 //Thrust power in MW, F in N

//output
printf('(A)thrust is %3.2f kN \n (B)Thrust power is %3.3f MW \n (C)propulsive efficiency is %3.1f',F,Pt,np)
