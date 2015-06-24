clc
clear
//Input data
d=15//Diameter in cm. In textbook it is given wrong as 39
l=45//Stroke in cm
f=9.5//Total fuel used in litres
CV=10500//Calorific value in kcal/kg
n=12624//Total no. of revolutions
imep=7.24//Gross i.m.e.p in kg/cm^2
pimep=0.34//Pumping i.m.e.p in kg/cm^2
L=150//Net load on brake in kg
db=1.78//Diameter of the brake wheel drum in m
dr=4//Diameter of rope in cm
cw=545//Cooling water circulated in litres
Tc=45//Cooling water temperature rise in degree C
g=0.8//Specific gravity of oil

//Calculations
ihp=((imep-pimep)*(l/100)*3.14*d^2*n)/(4500*60)//I.H.P in h.p
q=(f*g*CV)/60//Heat supplied in kcal/min
bhp=(L*3.14*(db+(dr/100))*n)/(4500*60)//B.H.P in h.p
qbhp=(bhp*4500)/427//Heat equivalent of B.H.P in kcal/min
qw=(cw*Tc)/60//Heat lost to jacket cooling water in kcal/min
dq=(q-(qbhp+qw))//Heat unaccounted in kcal/min

//Output
printf('Heat supplied is %3.0f kcal/min \n Heat equivalent of B.H.P is %3.0f kcal/min \n Heat lost to jacket cooling water is %3.0f kcal/min \n Heat unaccounted is %3.0f kcal/min',q,qbhp,qw,dq)
