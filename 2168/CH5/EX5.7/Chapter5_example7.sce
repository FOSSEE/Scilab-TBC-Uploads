clc
clear
//Input data
r=14//Compression ratio
s=5//Fuel injection stops at 5% stroke after inner head centre
pm=50//Maximum pressure in kg/cm^2
p4=1//Pressure at the end of suction stroke in kg/cm^2
T4=90+273//Temperature at the end of suction stroke in K
R=29.3//Characteristic gas constant in mkg/kg/degree C
cv=[0.171,0.00003]//Cv=0.171+0.00003T where Cv is Specific heat at constant volume and T is the temperature in K
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
a=(R/J)+cv(1)//a value in kcal/kg.mole.K
g=(a+cv(2)*T4)/(cv(1)+cv(2)*T4)//Adiabatic index of compression
z=1.3//Rounding off 'z' value to one decimal.
T5=(T4*r^(z-1))//Temperature in K
p5=(p4*r^g)//Pressure in kg/cm^2
T1=T5*(pm/p5)//Tmperature in K
T2=(T1*(1+(s/100)*(r-1)))//Temperature in K
T3=(T2*((1+(s/100)*(r-1))/r)^(g-1))//Temperature in K
p3=(p4*(T3/T4))//Pressure in kg/cm^2
function y=f1(T),y=cv(1)+(cv(2)*T),endfunction
I1=intg(T5,T1,f1)
function y=f2(T),y=(a+(cv(2)*T)),endfunction
I2=intg(T1,T2,f2)//I2 answer is given wrong in the textbook
qs=(I1+I2)//Heat supplied per kg of air in kcal/kg
function y=f3(T),y=a+(cv(2)*T),endfunction
qre=intg(T4,T3,f3)//Heat required per kg of air in kcal/kg
nth=((qs-qre)/qs)*100//Thermal efficiency in percent

//Output
printf('The tempertautes and pressures at salient points of the cycle are : \n T1 = %3.0f K  p1 = %3.1f kg/cm^2 \n T2 = %3.0f K  p2 = %3.1f kg/cm^2 \n T3 = %3.0f K  p3 = %3.1f kg/cm^2 \n T4 = %3.0f K  p4 = %3.1f kg/cm^2 \n T5 = %3.0f K  p5 = %3.1f kg/cm^2 \n\n Heat supplied per kg of air is %3.1f kcal/kg \n\n The thermal efficiency of the cycle is %3.1f percent',T1,pm,T2,pm,T3,p3,T4,p4,T5,p5,qs,nth)
//Textbook answers are given wrong
