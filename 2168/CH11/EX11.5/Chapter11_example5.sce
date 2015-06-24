clc
clear
//Input data
d=10//Diameter in cm
l=15//Stroke in cm
r=6//Compression ratio
ihp=20//Indicated horse power in h.p
N=1000//Speed in r.p.m
n=4//Number of cylinders
nt=30//Thermal efficiency in percent
CV=10000//Calorific value in kca/kg
g=1.4//Ratio of specific heats

//Output
Vs=((3.14/4)*d^2*l)//Swept volume in c.c
Vc=(Vs/(r-1))//Clearance volume in c.c
na=(1-(1/r)^(g-1))*100//Air standard efficiency in percent
pm=((ihp*4500)/((l/100)*(3.14/4)*(d/100)^2*(N/2)*n))//Pressure in kg/cm^2
pc=(ihp*4500*60)/(427*(nt/100)*CV)//Petrol consumption in kg/hr

//Output
printf('Clearance volume is %3.1f c.c \n The air standard efficiency is %3.1f percent \n Petrol consumption is %3.2f kg/hr',Vc,na,pc)
