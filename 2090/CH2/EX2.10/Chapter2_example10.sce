clc
clear
//Input data
p1=1//Inlet pressure in bar
T1=27+273//Temperature in K
p2=4//pressure at point 2 in bar
p3=16//Maximum pressure in bar
Cv=0.573//specific heat at constant volume for gas in kJ/kgK
Cp=0.761//specific heat at constant pressure for gas in kJ/kgK

//Calculations
g=(Cp/Cv)//Adiabatic index
T2=(T1*(p2/p1)^((g-1)/g))//Temperature in K
T3=(p3/p2)*T2//Temperature in K
T4=T3*(p1/p3)^((g-1)/g)//Temperature in K
Q1=Cv*(T3-T2)//Heat supplied in kJ/kg
Q2=Cp*(T4-T1)//Heat rejected in kJ/kg
W=Q1-Q2//Workdone in kJ/kg
n=(W/Q1)*100//Efficiency of cycle 
r=(p2/p1)^(1/g)//Compression ratio
R=(Cp-Cv)//Universal gas constant in kJ/kg.K
Vs=(R*1000*T1*(r-1))/(p1*10^5*r)//Swept volume in m^3/kg
pm=(W/(Vs*100))//Mean effective pressure in bar

//Output
printf('(a) The work done per kg of gas is %3.1f kJ/kg \n (b) The efficiency of the cycle is %3.1f percent \n (c) Mean effective pressure is %3.2f bar',W,n,pm)
