clc
clear
//Input data
//Data from problem 1
n=6//Number of cylinders
p=720//Horse power in h.p
N=180//Speed in r.p.m
f=250//Fuel rate in gm per horse power hour

Vo=20//Volume of oil in the suction chamber in c.c
dp=80//Discharge pressure in kg/cm^2
voi=6//Volume of oil in the injector in c.c
g=0.9//Specific gravity of oil
b=78.8*10^-6//Coefficient of compressibility in cm^2/kg when pressure is taken as atmospheric

//Calculations
w=(((f/1000)*p)/((N/2)*60*n))*1000//Weight of fuel per cycle in gm/cycle
Va=(w/g)//Volume of air per cycle in c.c
V1=(Vo+Va)//Initial volume in c.c
dV12=(b*V1*dp)//Change in volume in c.c
//Assuming in accordance with average practice that s=2d, nv=0.94 and full load in this pump type x=0.5
d=((voi+dV12)/((3.14/4)*2*0.94*0.5))^(1/3)//Diameter in cm
l=(2*d)//Stroke in cm

//Output
printf('The diameter of the pump is %3.2f cm \n The total stroke is %3.2f cm',d,l)
