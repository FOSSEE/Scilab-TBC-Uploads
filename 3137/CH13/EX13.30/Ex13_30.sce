//Initilization of variables
r=3940+500 //mi
phi=0 //degrees
vo=36000 //ft/s
C=4440*5280*vo
G=3.43*10^-8
M=4.09*10^23 //kg
//Calculations
e=((C*vo)/(G*M))-1
//Result
clc
printf('The value of e=%f hence the path is Hyperbolic',e)
