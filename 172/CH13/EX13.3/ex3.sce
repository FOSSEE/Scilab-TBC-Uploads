//ques3
//calculating humidity ratio, dew point,mass of air, mass of vapor
clear
clc
r=0.70;//relative humidity
Pg=5.628;//saturation pressure in kPa
Pv=r*Pg;//vapour pressure in kPa
P=100;//net pressure kPa 
Pa=P-Pv;//Partial pressure of air
w=0.622*Pv/Pa;//humidity ratio formula
V=100;//volume in m^3
Ra=0.287;//gas constant for water vapour
T=308.2;//Temperature in K
ma=Pa*V/(Ra*T);//mass in kg
mv=w*ma;//mass of vapour
printf('Mass of vapour = %.2f Kg ', mv);