clc
clear
//Input data
p1=1//Pressure at the end of suction stroke in kg/cm^2
T1=30+273//Temperature at the end of suction stroke in kg/cm^2
T3=1500+273//Maximum temperature during the cycle in K
r=16//Compression ratio
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
Cv=0.17//Specific heat at constant volume in kJ/kg.K
g=1.41//Ratio of specific heats

//Calculations
T2=T1*r^(g-1)//Temperature at the end of adiabatic compression in K
s=(((T3/T2)-1)/(r-1))*100//Percentage of the stroke at which cut off occurs
r1=(r/(T3/T2))//Expansion ratio
T4=T3/(r1)^(g-1)//Temperature at the end of adiabatic expansion in K
qa=(Cp*(T3-T2))//Heat added in kcal/kg of air
qre=(Cv*(T4-T1))//Heat rejected in kcal/kg of air
nt=((qa-qre)/qa)*100//Air standard efficiency in percent

//Output
printf('(a) The percentage of stroke at which cut off takes place is %3.2f percent \n (b) The temperature at the end of expansion stroke is %3.0f K \n (c) The theoretical efficiency is %3.0f percent',s,T4,nt) 
