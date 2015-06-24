//example 9
//The Amount of Dissolved Air in Water
clear
clc
Pv=1.96 //kPa
P=92 //atmospheric pressure at lakelevel
Pdryair=(P-Pv)/100 //pressure of dry air in bar
H=62000//Henry’s constant for air dissolved in waterin bar
ydryair=Pdryair/H //mole fraction of air in the water
printf("\n Hence, the mole fraction of air at the surface of lake is = %.7f . \n",ydryair);