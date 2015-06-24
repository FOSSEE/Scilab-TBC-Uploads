clc
clear
//Input data
T1=273;//The temperature of ice in K
T2=298;//Temperature of water at room in K
COP=2.1;//Cop of the plant
ne=90;//Overall electrochemical efficiency in percentage
w=15;//Weight of ice produced per day in tonnes
cw=4.187;//Specific heat of water in kJ/kg degrees celcius
Li=335;//Latent heat of ice in kJ/kg
mi=1;//Mass of ice produced at 0 degrees celcius

//Calculations
m=(w*1000)/(24*60);//Mass of ice produced in kg/min
h=(mi*cw*(T2-T1))+Li;//Heat extracted from 1kg of water at 25 degrees celcius to produce 1kg of ice at 0 degrees celcius in kJ/kg
Q=m*h;//Total heat extracted in kJ
W=Q/COP;//Work done by the compressor in kJ/kg
P=W/(60*(ne/100));//Power of compressor in kW

//Output
printf('Power rating of the compressor-motor unit if the cop of the plant is 2.1 is %3.1f kW',P)
