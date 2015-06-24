clc
clear
//Input data
n=4//Number of cylinders
p=450//Brake Horse power in B.H.P
N=200//Speed in r.p.m
f=0.2//Fuel rate in kg per horse power hour
g=0.9//Specific gravity of fuel

//Output
Fc=(p*f)//Fuel consumption per hour in kg/hr
Fcy=(Fc/n)//Fuel consumption per cylinder in kg/hr
Fcyc=(Fcy/(60*(N/2)))//Fuel consumption per cycle in kg
q=(Fcyc/(g*1000))*10^6//Quantity of fuel injected per cylinder per cycle in c.c

//Output
printf('The quantity of fuel to be injected per cycle per cylinder is %3.3f c.c',q)
