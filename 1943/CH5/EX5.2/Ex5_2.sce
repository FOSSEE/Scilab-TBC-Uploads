
clc
clear
//Input data
d=427*10^-6;//The mean particle size in m
pg=1.21;//The density of air in kg/m^3
v=1.82*10^-5;//The viscosity of air in kg/ms
pl=1620;//The density of the loosely packed bed in kg/m^3
ps=2780;//The density of the solids in kg/m^3
c1=27.2;//(Grace,1982)constant value.
c2=0.0408;//(Grace,1982)constant value
g=9.812;//Gravitational forc constant in m/s^2

//Calculations
E=1-(pl/ps);//The voidage of the bed
Ar=[(pg)*(ps-pg)*g*(d^3)]/v^2;//Archimedes number
Re=[c1^2+(c2*Ar)]^(0.5)-c1;//Reynolds number
Umf=Re*v/(pg*d);//Minimum superficial velocity in m/s

//Output
printf('(a) The voidage of the bed = %3.3f \n (b) The minimum fluidization velocity Umf = %3.3f m/s ',E,Umf)
