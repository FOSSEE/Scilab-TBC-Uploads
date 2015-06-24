clc
clear
//Input data
af=25//Air fuel ratio
CV=10000//Calorific value in kcal/kg
cv=[0.17,0.00004]//Cv=0.17+0.00004T where Cv is Specific heat at constant volume and T is the temperature in K
r=14//Compression ratio
T2=800+273//Temperature at the end of compression in K
R=29//Characteristic gas constant in mkg/kg/degree C
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
CVm=(CV/(af+1))//Calorific value of mixture in kcal/kg
cpv=(R/J)//Difference in mean specific heats in kcal/kg mol.K
a=(cv(2)/2)//For solving T3
b=cpv+cv(1)//For solving T3
c=(-T2*(cpv+cv(1)))-((cv(2)/2)*T2^2)-CVm//Foe solving T3
T3=(-b+sqrt(b^2-(4*a*c)))/(2*a)//Soving for T3 in K
s=((T3/T2)/(r-1))*100//Percentage of the stroke

//Output
printf('The percentage of the stroke at which the combustion will be complete is %3.2f percent',s)
