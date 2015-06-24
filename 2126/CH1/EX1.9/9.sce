clc
clear

//Input data
V1=0.5 //Voume of Water required to fill pressure vessel in m^3
P=3000 //Test pressure in bar
dv=0.6 //Change of empty volume of container due to pressurisation in percentage 
K=20000 //Bulk modulus of water in MPa

//Calculation
m1=V1*10^3 //Mass of water required to fill pressure vessel in kg
Vr=(P*V1)/K //Reduced volume of water due to compression in m^3
Vi=dv*V1/100 //Increased volume of container in m^3
V=Vr+Vi //Volume of additional water required in m^3
m=V*10^3 //Mass of additional water required in kg
mt=m1+m //Total mass of water required in litre, Since 1kg=1Lit

//Output
printf('Mass of water to be pumped into the vesel to obtain the desired pressure is %3i lit',mt)
