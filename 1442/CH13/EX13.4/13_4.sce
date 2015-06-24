clc
//initialisation of variables
W= 800 //N
A= 0.4 //cm^2
p= 0.611 //Mpa
P1= 0.1 //Mpa
T= 0.01 //C
vs= 0.0010908 //m^3/kg
hs= -333.40 //kJ/kg
vf= 0.0010002 //m^3/kg
hf= 0 //kJ/kg
vg= 206.14 //m^3/kg
hg= 2501.4 //kJ/kg
//CALCULATIONS
P2= P1+(W/A)*10^(4-6)
dT= (273.15++T)*(vf-vs)*(P2*10^3-p)/(0-hs)
Tmin= dT+T
//RESULTS
printf (' lowest temperature= %.2f C',Tmin)
