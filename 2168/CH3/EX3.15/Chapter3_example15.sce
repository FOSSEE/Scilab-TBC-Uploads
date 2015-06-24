clc
clear
//Input data
r=12//Compression ratio
p1=0.955//Pressure at the start of compression in kg/cm^2
T1=85+273//Temperature at the start of compression in K
p3=55//Maximum pressure of the cycle in kg/cm^2
x=(1/30)//Constant pressure heat reception contnues for 1/30 of the stroke
Cp=0.238//Specific heat at constant pressure in kJ/kg.K
Cv=0.17//Specific heat at constant volume in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
T2=T1*r^(g-1)//Temperature at the end of compression in K
p2=(p1*r^g)//Pressure at the end of compression in kg/cm^2
T3=T2*(p3/p2)//Temperature at the end of constant volume heat addition in K
T4=(T3*((p1+x*(r-1))/p1))//Temperature at the end of constant pressure heat supply in K
T5=T4*((p1+x*(r-1))/r)^(g-1)//Temperature at the end of expansion in K
qs=(Cv*(T3-T2))+(Cp*(T4-T3))//Heat supplied in kcal/kg of air
qre=(Cv*(T5-T1))//Heat rejected in kcal/kg of air
W=(qs-qre)//Workdone in kcal/kg of air
an=((qs-qre)/qs)*100//Air standard efficiency in percent

//Ouptut
printf('The wordone per kg of air is %3.2f kcal \n The ideal thermal efficiency is %3.1f percent',W,an)

