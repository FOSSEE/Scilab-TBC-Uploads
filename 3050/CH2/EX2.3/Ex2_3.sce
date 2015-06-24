//calculating GCV and NCV
//Example 2.3
clc
clear
C=80//percentage of Carbon in coal
O=3//percentage of Oxygen in coal
H=7//percentage of Hydrogen in coal
S=3.5//percentage of Sulphur in coal
N=2.1//percentage of Nitrogen in coal
GCV=((8080*C)+(34500*(H-O/8))+(2240*S))/100//gross calorific value in kcal/kg
NCV=(GCV-(0.09*H*587))//net calorific value in kcal/kg
printf('Thus the gross calorific value of coal = %4.0f kcal/kg',GCV)
printf('\n and the net calorific value of coal = %4.0f kcal/kg',NCV)
