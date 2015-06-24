clc
clear
//Input data
n=4//Number of cylinders
fc=0.215//Brake specific fuel consumption in kg/B.H.P hour
BHP=400//Brake horse power in B.H.P
N=250//Speed in r.p.m
sg=0.9//Specific gravity

//Calculations
Fc=(fc*BHP)//Fuel consumption per hour in kg/hr
Fcy=(Fc/n)//Fuel consumption per cylinder in kg/hr
Fcyc=((Fcy/(60*(N/2)))/(sg*1000))*10^6//Fuel consumption per cycle in kg. In textbook it is given wrong as 0.0287 instead of 3.185

//Output
printf('The quantity of fuel to be injected per cycle per cylinder is %3.3f c.c',Fcyc)
