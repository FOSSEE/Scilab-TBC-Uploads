clc
clear
//Input data
n=4//Number of cylinders
d=6.25//Diametre in cm
l=9.5//Stroke in cm
t=678//Torque in kg.m
N=3000//Speed in r.p.m
Vc=60//Clearance volume in c.c
be=0.5//Brake efficiency ratio based on the air standard cycle
CV=10000//Calorific value in kcal/kg
g=1.4//Ratio of specific heats

//Calculations
Vs=(3.14/4)*d^2*l//Stroke volume in c.c per cylinder
r=((Vs+Vc)/Vc)//Compression ratio
na=(1-(1/r^(g-1)))//Air standard efficiency
bth=(be*na)*100//Brake thermal efficiency in percent
bhp=((t/100)*2*3.14*N)/4500//B.H.P in H.P
q=(bhp*(4500/427))/(bth/100)//Heat supplied in kcal/min
F=(q*60)/CV//Fuel consumption in kg/hour
P=(bhp*4500*2*100)/(n*Vs*N)//pressure in kg/cm^2

//Output
printf('The fuel consumption is %3.2f kg/hour \n The brake mean effective pressure is %3.2f kg/cm^2',F,P)
