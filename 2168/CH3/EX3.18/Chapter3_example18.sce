clc
clear
//Input data
n=6//Six cylinder engine
r=5//Compression ratio
Vc=110//Clearance volume in c.c
a=0.66//Efficiency ratio referred to the air standard cycle
N=2400//Speed in r.p.m
m=9.9//Mass of petrol in kg
CV=10600//Calorific value of fuel in kcal/kg
g=1.4//Ratio of specific heats

//Calculations
Vs=(r*Vc-Vc)//Swept Volume in c.c
na=(1-(1/r)^(g-1))*100//Air standard efficiency in percent
nt=(na/100)*a//Thermal efficiency 
IHP=(nt*CV*m*427)/(4500*60)//Indicated Horse Power in h.p
pm=(((IHP/n)*4500*100*2)/(Vs*N))//Average indicated mean effective pressure in kg/cm^2

//Output
printf('The average indicated mean effective pressure in each cylinder is %3.3f kg/cm^2',pm)
