//example 8
//Mole Fraction of Water Vapor Just over a Lake
clear
clc
Pv=1.7057 //the partial pressure of water vapor in the air at the lake surface in kPa
P=92 //atmospheric pressure at lake level in kPa
yv=Pv/P //The mole fraction of water vapor in the air at the surface of the lake
printf("\n Hence, The mole fraction of water vapor in the air at the surface of the lake is = %.2f percent. \n",yv*100);
disp('Water contains some dissolved air, but the amount is negligible. Therefore,we can assume the entire lake to be liquid water. So, mole fraction of water in lake is almost 1')