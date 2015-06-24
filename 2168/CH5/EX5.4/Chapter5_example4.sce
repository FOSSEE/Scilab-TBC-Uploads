clc
clear
//Input data
af=25//Air fuel ratio
cv=[0.17,0.00004]//Cv=0.17+0.00004T where Cv is Specific heat at constant volume and T is the temperature in K
r=14//Compression ratio
p1=1//Pressure at the beginning of compression in kg/cm^2
T1=153+273//Temperature at the beginning of compression in K
CV=10000//Heating value of fuel in kcal/kg
n=1.35//Adiabatic constant
R=29//Characteristic gas constant in mkg/kg.K
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
T2=(T1*r^(n-1))//Temperature at the end of compression in K
a=(cv(2)/2)//For solving T3
b=cv(1)+(R/J)//For solving T3
c=(-T2*cv(1))-((cv(2)/2)*T2^2)-((R/J)*T2)-(CV/(af+1))//Foe solving T3
T3=(-b+sqrt(b^2-(4*a*c)))/(2*a)//Soving for T3 in K
pc=(((T3/T2)-1)/(r-1))*100//Percentage cut off

//Output
printf('The percentage of stroke at which the constant pressure combustion stops is %i percent',pc)
