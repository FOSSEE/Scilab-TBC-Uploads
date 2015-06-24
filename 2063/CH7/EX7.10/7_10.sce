clc
clear
//Input data
d=6;//Diameter of the bore in cm
l=9;//Length of the stroke in cm
m=0.00025;//Mass of charge admitted in each suction stroke
R=29.27;//Gas constant Kgfm/kg K
p=1;//Normal pressure in kgf/cm^2
T=273;//Temperature in K

//Calculations
V=(m*R*T)*10^6/(p*10^4);//Volume of charge admitted in each cycle in m^3
Vs=(3.14*d^2*l)/4;//Swept volume of the cylinder
nv=(V/Vs)*100;//Volumetric efficiency in percentage

//Output
printf('The volumetric efficiency is %3.1f percent',nv)
