//example 12
//Calculating mass flow of steam in tank
clear
clc
V1=0.4 //initial volume fo tank in m^3
v1=0.5243 //initial specific volume in m^3/kg
h1=3040.4 //initial specific enthalpy in kJ/kg
u1=2548.9 //initial specific internal energy in kJ/kg
m1=V1/v1 //initial mass of steam in tank in kg
V2=0.4 //final volume in m^3
disp('let x=V*(h1-u2)/v2-m1*(h1-u1).If we assume T2=300C, then v2=0.1823m^3/kg ,u2=2785.2kJ/kg and x=+ve.If we assume T2=350C,then v2=0.2003 m^3/kg, u2=2869.1kJ/kg and x=-ve.Hence,actualt T2 must be between these two assumed values in order that x=0.By interplotation,') 
T2=342 //final temperature in Celsius
v2=0.1974 //final specific volume in m^3/kg
m2=V2/v2 //final mass of the steam in the tank in kg
m=m2-m1 //mass of steam that flowsinto the tank
printf(" \n Hence,mass of the steam that flows into the tank is m=%.3f kg. \n",m)