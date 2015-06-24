clc
clear
//Input data
n=4//Number of cylinders
d=105//Bore in mm
l=127//Stroke in mm
BHP=63//Brake horse power in h.p
N=1800//Speed in r.p.m
t=15//Test time in min
mf=2.75//Mass of fuel in kg
CV=11000//Calorific value in kcal/kg
af=14.8//Air fuel ratio
v=0.805//Specific volume in m^3/kg
nv=80//Volumetric efficiency in percent
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
bth=((BHP*4500)/(J*(mf/t)*CV))*100//Brake thermal efficiency in percent
Vs=((3.14/4)*(d/10)^2*(l/10))//Stroke volume in c.c
Vsw=(Vs*n*(N/2)*t)//Swept volume in c.c
Va=(Vsw*10^-6*(nv/100))//Volume of air sucked in m^3
wa=(Va/v)//Weight of air sucked in kg
wr=(af*mf)//Weight of air reqired in kg
pei=(wr/wa)*100//Percentage of air available for combustion

//Output
printf('Brake thermal efficiency is %3.1f percent \n The percentage of air used for combustion is %i percent',bth,pei)

