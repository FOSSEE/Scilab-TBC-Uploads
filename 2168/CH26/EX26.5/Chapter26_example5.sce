clc
clear
//Input data
p=3.5//Pressure at the delivery is 3.5 times that at entrance
T=1.15//Temperature rise during compression is 1.15 times that for frictionless adiabatic compression. In textbook it is given wrong as 1.5
T3=500+273//Temperature of products of combustion in K
pa=1//Atmospheric pressure in kg/cm^2
Ta=15+273//Atmospheric temperature in K
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
p2=p*pa//Pressure in kg/cm^2
T2a=(Ta*(p2/pa)^((g-1)/g))//Temperature in K
T2=(T2a-Ta)*T+Ta//Temperature in K
wcomp=(Cp*(T2-Ta))//Work done by compressor in kcal/kg
T5=T3/(p2/pa)^((g-1)/g)//Temperature in K
dh35=(Cp*(T3-T5))//Change in enthalpy in kcal/kg
dhnozzle=(dh35-wcomp)//Change in enthalpy of nozzle in kcal/kg
v5=sqrt(2*9.81*J*dhnozzle)//Velocity at the nozzle exit in m/sec
Th=(v5/9.81)//Thrust in kg per kg of air/sec

//Output
printf('(a) the power required to drive the compressor per kg of air per second is %3.1f kcal/kg \n (b) Static thrust developed per kg of air per second is %3.1f kg',wcomp,Th)
