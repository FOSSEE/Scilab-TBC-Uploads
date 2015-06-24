clc
clear
//Input data
p1=1//Pressure at the beginning of compression in kg/cm^2
T1=80+273//Temperature at the beginning of compression in K
r=14//Compression ratio
p4=2.7//Pressure at the end of expansion in kg/cm^2
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
p2=p1*r^g//Pressure at the end of compression in kg/cm^2
s=(((r*(p4/p2)^(1/g))-1)/(r-1))*100//Percentage of stroke when the fuel is cut off in percent
T2=(T1*(p2/p1))/r//Temperature at the end of compression in K
T3=(T2*r*(p4/p2)^(1/g))//Temperature at the end of adiabatic expansion in K
q=(Cp*(T3-T2))//Heat supplied in kcal/kg

//Output
printf('(a) The maximum pressure attained during the cycle is %3.1f kg/cm^2 \n (b) The percentage of working stroke at which the heat supply to the working fluid ceases is %3.2f percent \n (c) The heat received per kg of woring substance during the cycle is %3.0f kcal/kg',p2,s,q)
