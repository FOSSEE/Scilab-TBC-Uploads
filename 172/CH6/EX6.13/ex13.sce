//example 13
//Calculating mass flow of steam in tank
clear
clc
vf1=0.001725 //in m^3/kg
vf2=0.0016 //in m^3/kg
uf1=368.7 //in kJ/kg
uf2=226 //in kJ/kg
vg1=0.08313 //in m^3/kg
vfg2=0.20381
ug1=1341 //in kJ/kg
ufg2=1099.7 //in kJ/kg
Vf=1 //initial volume of liquid in m^3
Vg=1 //initial volume of vapor in m^3
mf1=Vf/vf1 //initial mass of liquid in kg
mg1=Vg/vg1 //initial mass of vapor in kg
m1=mf1+mg1 //initial mass of liquid in kg
he=1461.1 //in kJ/kg
V=2 //volume of tank in m^3
disp('m1u1=mf1*uf1+mg1*ug1.If x2 is the quality,then m2=V/v2=2/(0.00160+0.20381*x2) and u2=uf2+x2*ufg2=226.0+1099.7*x2.')
disp('Also,m2*(he-u2)=m1*he-m1u1.From this equation,we will get an equation for x2.')
x2=((2*1461.1)-(2*226)-(0.00160*634706))/((634706*0.20381)+(2*1099.7)) //quality of ammonia
v2=0.00160+(0.20381*x2) //final specific volume in m^3/kg
m2=V/v2 //final mass of ammonia in kg
m=m1-m2 //mass of ammonia withdrawn
printf(" \n Hence,mass of ammonia withdrawn is m=%.1f kg. \n",m)