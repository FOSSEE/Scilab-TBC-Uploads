clc
clear
//Input data
n=4//Four cylinder engine
N=1200//Speed in r.p.m
BHP1=26.3//Brake horse power in B.H.P
T=11.3//Average torque in kg
CV=10000//Calorific value of the fuel in kcal/kg
m=270//Flow rate in gm of petrol per B.H.P hour

//Calculations
BHP2=(T*2*3.14*N)/4500//Average B.H.P on 3 cylinders 
IHP=BHP1-BHP2//Average I.H.P of one cylinder
TIHP=(n*IHP)//Total I.H.P
p=((m/1000)*BHP1)/TIHP//Petrol used in kg/I.H.P hr
nth=((4500*60)/(427*p*CV))*100//Indicated Thermal efficiency in percent 

//Output
printf('Thermal efficiency is %3.1f percent',nth)
