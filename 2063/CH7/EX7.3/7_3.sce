clc
clear
//Input data
W=950;//Load on hydraulic dynamometer in N
C=7500;//Dynamometer constant
f=10.5;//Fuel used per hour in kg
h=50000;//Calorific value of fuel in kJ/kg
N=400;//Engine speed in rpm

//Calculations
P=(W*N)/C;//Power available at the brakes in kW
H=P*60;//Heat equivalent of power at brakes in kJ/min
Hf=(f*h)/60;//Heat supplied by fuel per minute in kJ/min
n=(H/Hf)*100;//Brake thermal efficiency in percentage

//Output
printf(' Brake thermal efficiency of the engine is %3.2f percent',n)
