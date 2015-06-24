//calculating GCV and NCV
//Example 2.4
clc
clear
C=84//percentage of Carbon in coal
O=8.4//percentage of Oxygen in coal
H=5.5//percentage of Hydrogen in coal
S=1.5//percentage of Sulphur in coal
N=0.6//percentage of Nitrogen in coal
GCV=((8080*C)+(34500*(H-O/8))+(2240*S))/100//gross calorific value in kcal/kg
NCV=(GCV-(0.09*H*587))//net calorific value in kcal/kg
printf('Thus the gross calorific value of coal = %4.0f kcal/kg',GCV)
printf('\n and the net calorific value of coal = %4.0f kcal/kg',NCV)
