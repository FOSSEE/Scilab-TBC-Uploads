clc
clear
//Input data
p1=1.05//Inlet pressure in kg/cm^2
T1=15+273//Inlet temperature in K
p2=33.4//Pressure at the end of adiabatic compression in kg/cm^2
r=5//The ratio of expansion
Cp=0.238//Specific heat at constant pressure in kJ/kg.K
Cv=0.17//Specific heat at constant volume in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
r1=(p2/p1)^(1/g)//Compression ratio
k=r1/r//Cutoff ratio
T2=(p2/p1)^((g-1)/g)*T1//Temperature at the end of adiabatic compression in K
T3=T2*k//Temperature at the end of constant pressure heat addition in K
T4=T3*(1/r)^(g-1)//Temperature at the end of adiabatic expansion in K
qa=(Cp*(T3-T2))//Heat added in kcal/kg of air
qre=(Cv*(T4-T1))//Heat rejected in kcal/kg of air
nt=((qa-qre)/qa)*100//Ideal thermal efficiency in percent

//Output
printf('The ideal thermal efficiency is %3.1f percent',nt)
