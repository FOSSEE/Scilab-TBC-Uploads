//example 5
//Heating and Humidification of Air
clear
clc
disp('This is a steady-flow process and thus the mass flow rate of dry air remains constant during the entire process.We take the system to be the heating or the humidifying section,as appropriate.')
o1=0.3 //relative humidity
Psat=1.2281 //Saturation pressure of water in kPa at 10C
P1=100 //Pressure at which entire process takes in kPa
Pv1=0.3682 //Vapour pressure of water in kPa
Ra=0.287 // Gas constant for air in kPa-m3/kg-K
T1=10 // Temp. of outdoor air in K
Pa=P1-Pv1 // Pressure of dry air in kPa
V1=Ra*(T1+273)/Pa // specific volume of dry air in m^3/kg
v1=45 //steady intake of outdoor air in m^3/min
ma=v1/V1 //mass flow rate of dry air in kg/min
w1=0.622*Pv1/(P1-Pv1)//kg water/kg dry air
cp=1.005 //constant pressure specific heat in kJ/kg-°C
hg1=2519.2 //in kJ/kg
T2=22 //temp. in celsius (given) 
w2=w1
hg2=2541 //specific enthalpy of saturated water vaporin at 22 C in kJ/kg
h1=cp*T1+w1*hg1 //kJ/kg dry air 
h2=cp*T2+w2*hg2 //kJ/kg dry air
qin=ma*(h2-h1) //rate of heat transfer to air in the heating section
x3=0.60 //relative humidity
Pg3=3.1698 //saturation pressure of water at 25C in kPa
P3=100 //pressure of entire process in kPa
w3=0.622*x3*Pg3/(P3-x3*Pg3)//kg water/kg dry air
mw=ma*(w3-w2) //required mass flow rate of the steam in the humidifying section in kg/min
printf("\n Hence, the rate of heat supply in the heating section is=%.0f kJ/min. \n",qin);
printf("\n The mass flow rate of the steam required in the humidifying section is=%.3f kg/min\n",mw);

