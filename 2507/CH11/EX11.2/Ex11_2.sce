clc
clear
printf("Example 11.2 | Page number 396 \n\n");
//Find reduced properties for air at 10 bar, 27°C
//Given data
Z = 1.04 //Compressiblity factor
pc = 3.77e6 //Pa //crticial pressure
Tc = 132.5 //K
vc = 0.0883 //m^3/kmol
p = 10e5 //Pa
T = 300 //K
//Solution
R = 287 //J/kgK
pR = p/pc //reduced pressure
TR = T/Tc //reduced temperature
v = Z*R*T/p //m^3/kg
vR = v/vc //reduced volume

printf("Reduced pressure = %.5f \n",pR)
printf("Reduced temperature = %.5f \n",TR)
printf("Reduced volume = %.5f \n",vR)
