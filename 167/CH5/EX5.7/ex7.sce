//example 7
// power generation by steam turbine
clear
clc
P1= 2 //initial pressure of steam in  MPa
T1= 400 //initial temp. of steam in °C
V1= 50 //initial velocity of steam in m/s
z1= 10 //height of inlet in metres
h1=3248.4 //initial specific enthalpy of air in kJ/kg
P2= 15 //final pressure of air in kPa
V2= 180 //final velocity of air in m/s
z2= 6 //exit height in m
x2=0.9 //quality of steam after exit 
disp('At turbine exit,we obviously have liquid vapour mixture at 15 kPa.')
hf=225.94 //in kJ/kg 
hfg=2372.3 //in  kJ/kg
h2=hf+x2*hfg //final specific enthalpy of mixture in kJ/kg
dh=h2-h1 // change in enthalpy of steam in kJ/kg
dke=(V2^2-V1^2)/2000 //change in kinetic energy of steam in kJ/kg
g=9.8 //acc. due to gravity in m/s^2
dpe=g*(z2-z1)/1000//change in potential energy of steam in kJ/kg
wout=-((h2-h1)+(V2^2-V1^2)/2000+g*(z2-z1)/1000) //work done per unit mass of the steam flowing through the turbine in kJ/kg
m=5000/wout //mass flow rate of steam in kg/s
printf("\n The value of dh is = %.2f kJ/kg. \n",dh);
printf("\n The value of dke is = %.2f kJ/kg. \n",dke);
printf("\n The value of dpe is = %.2f kJ/kg. \n",dpe);
printf("\n The work done per unit mass of the steam flowing through the turbine is = %.2f kJ/kg. \n",wout);
printf("\n The mass flow rate of the steam is = %.2f kg/s. \n",m);