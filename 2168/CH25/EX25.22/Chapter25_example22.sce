clc
clear
//Input data
p=[5,20]//Pressure limits in atm
T3=650+273//Temperature in K
T1=60+273//Temperature in K
T2=T1//Temperature in K
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats
R=29.27//Characteristic gas constant in kg.m/kg.K
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
T4=T3/(p(2)/p(1))^((g-1)/g)//Temperature in K
Wc=((R*T1)/J)*log(p(2)/p(1))//Compression work in kcal/kg
qs=(Cp*(T3-T2))//Heat supplied at constant pressure in kcal/kg
qre=(Cp*(T4-T1))//Heat ejected during process 4-1 in kcal/kg
nth=((qs-Wc-qre)/(qs-qre))*100//Thermal efficiency in percent
nc=((T3-T1)/T3)*100//Carnot efficiency in percent
r=(nth/nc)*100//Ratio of air standard efficiency to carnot efficiency in percent

//Output
printf('(a) air standard efficiency of the cycle is %3.1f percent \n (b) carnot efficiency is %3.0f percent \n (c) Ratio of air standard efficiency to carnot efficiency is %3.1f percent',nth,nc,r)
