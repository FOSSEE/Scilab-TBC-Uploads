clc
clear
//Input data
n=6//Number of cylinders
d=100//Diameter in mm
L=100//Stroke in mm
N=1500//Speed in r.p.m
ap=13.5//Air fuel ratio
Ta=80+273//Temperature of air in K
x=(7/8)//Ratio of volume drawn
nth=22//Thermal efficiency in percent
p=76//Pressure in cm of mercury
CV=9000//Calorific value of petrol in kcal/kg
l=1524//Altitude in m
dp=2.54//Drop in pressure in cm of barometric reading
lx=274//Altitude rise in m

//Calculations
Vs=(3.14/4)*(d/10)^2*(L/10)//Swept volume in c.c
Va=(x*Vs)//Volume of air drawn in per cylinder per stroke in c.c
wa=(Va*10^-6*(N/2)*n)//Weight of air supplied to the engine per minute in kg
wf=(wa/ap)//Weight of fuel consumed per minute in kg
q=(wf*CV)//Heat supplied to the engine per minute in kcal
P=(q*(nth/100)*427)/4500//Power developed at ground level in H.P
db=(l/lx)*dp//Drop in barometric reading at an altitude of 1524 m in cm
Pd=(P/p)*(p-db)//Power developed at 1524 m altitude in H.P

//Output
printf('Power developed at the ground level is %i H.P \n Power developed at an altitude of %i m is %i H.P',P,l,Pd)
