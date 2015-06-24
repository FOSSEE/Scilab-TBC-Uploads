
clc
clear
//Input data
W=120;//The amount of electricity produced in the power plant in MW
po=100;//The pressure of the steam at the outlet of boiler in bar
to=500;//The temperature of steam at the outlet of boiler in degree centigrade
p=0.1;//The condenser pressure in bar
nb=0.9;//The efficiency of the boiler
CV=25.7;//The calorific value of the coal in MJ/kg
ti=160;//The feed water temperature at boiler inlet in degree centigrade
H=40;//The high of the risers in the furnace wall in m
xt=0.08;//The quality of the steam at the top of the riser
v=2;//The exit velocity of the riser and entering the drum in m/s
Do=60;//The outer diameter of the risers in mm
T=3;//The thickness of the wall in mm
pi=3.142;//Mathematical constant
g=9.806;//Gravitational force constant in m/s^2

//Calculations
h1=3374.8;//Enthalpy at point 1 in kJ/kg
s1=6.6011;//Entropy at point 1 in kJ/kgK
sf=0.6479;//Entropy of the saturated liquid at point 1 in kJ/kgK
sg=7.5055;//Entropy of the Saturated vapour at point 1 in kJ/kgK
x2=(s1-sf)/sg;//The quality of the steam
h2=191.46+(x2*2393.29);//Enthalpy at point 2 in kJ/kg
h3=191.46;//Enthalpy at point 3 in kJ/kg
h5=675.5;//Enthalpy at point 5 in kJ/kg
ws=(W*1000)/(h1-h2);//Mass flow rate of steam in kg/s
wf=(ws*(h1-h5))/(nb*CV*1000);//Mass flow rate of fuel in kg/s
E=ws/wf;//Evaporation factor 
vf=0.0014523;//The specific volume of saturated liquid in m^3/kg
vg=0.0165884;//The specific volume of saturated vapour in m^3/kg
vt=vf+(xt*vg);//Specific volume at the top in m^3/kg
pt=1/vt;//Density of the steam at the top in kg/m^3
pf=1/vf;//The density of the steam in kg/m^3
pm=(pf+pt)/2;//The average mixture density in kg/m^3
H1=[g*H*(pf-pm)]/10^5;//Pressure head available for natural circulation in bar
CR=1/xt;//Circulation ratio
di=(Do-(2*T))/1000;//The inner diameter of the riser in m
A=(pi*di^2)/4;//Area for the inner diameter in m^2
w=(A*pt*v*xt);//The rate of steam formation in the riser in kg/s
Nr=ceil(ws)/w;//The number of risers
hfg=1319.8;//Enthalpy of the evaporation in kJ/kg
Ha=(w*hfg)/((Do/1000)*H);//Heat absorption rate per unit projected area of the riser in kW/m^2

//Output 
printf('(a)The steam generation rate = %3.3f kg/s \n (b) The fuel burning rate = %3.3f kg/s \n (c) The evaporation factor = %3.2f \n (d) The pressure head available for natural circulation = %3.4f bar \n (e) The circulation ratio = %3.1f \n (f)The number of risers required = %3.0f \n (g) The heat absorbtion rate per unit projected area of the riser = %3.2f kW/m^2',ws,wf,E,H1,CR,Nr,Ha)
