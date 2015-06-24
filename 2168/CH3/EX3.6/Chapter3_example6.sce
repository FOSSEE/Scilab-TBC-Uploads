clc
clear
//Input data
T1=40+273//Temperature at the beginning of compression in K
p1=1//Pressure at the beginning of compression in kg/cm^2
p2=15//Pressure at the end of adabatic compression in kg/cm^2
T3=2000+273//Maximum temperature during the cycle in K
Cv=0.17//Specific heat at constant volume in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
T2=T1*(p2/p1)^((g-1)/g)//Temperature at the end of adabatic compression in K
na=(1-(T1/T2))*100//Air standard efficiency in percent
q=(Cv*(T3-T2))//Heat added in kcal/kg of air
W=((na/100)*q)//Workdone per kg of air in kcal
W1=(4.28*W)//Workdone per kg of air in kg.m
p3=(p2*(T3/T2))//Pressure at the end of constant volume heat addition in kg/cm^2
p4=(p3*p1)/p2//Pressure at the end of adiabatic expansion in kg/cm^2

//Output
printf('(a) The heat supplied is %3.0f kcal/kg of air \n (b) The workdone is %i kcal/kg of air \n (c) The pressure at the end of adiabatic expansion is %3.2f kg/cm^2',q,W,p4)
