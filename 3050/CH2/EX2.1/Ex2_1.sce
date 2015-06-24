//calculating GCV and NCV
//Example 2.1
clc
clear
C=60//percentage of Carbon in coal
O=33//percentage of Oxygen in coal
H=6//percentage of Hydrogen in coal
S=0.5//percentage of Sulphur in coal
N=0.5//percentage of Nitrogen in coal
GCV=((8080*C)+(34500*(H-O/8))+(2240*S))/100//gross calorific value in kcal/kg
NCV=(GCV-(0.09*H*587))//net calorific value in kcal/kg
printf('Thus the higher calorific value of coal = %4.2f kcal/kg',GCV)
printf('\n and the lower calorific value of coal = %4.2f kcal/kg',NCV)
