
clc
clear
//Input data
CV=24;//The calorific value of the fuel in MJ/kg
C=0.65;//The amount of calorific value released in the bed in %
to=850;//Temperature at which products leave in degree centigrade
ti=30;//The inlet temperature in degree centigrade
tb=850;//The bed temperature in degree centigrade
A=14.5;//The air fuel ratio by mass
Cp=1.035;//The specific heat of the products leaving the bed surface in kJ/kgK
B=7000;//The burning rate of coal in kg/h

//Calculations
H=(C*CV*1000)-(A*Cp*(to-ti));//Heat removal from the bed per kg fuel in kJ/kg fuel
Hr=(H*B)/3600;//Rate of heat removal from the bed in kW
Hb=(B/3600)*(1-C)*CV*1000;//The rate of heat removal from the above bed zone in kW

//Output
printf('(a) The rate of heat removal from the bed = %3.0f kW \n (b) The rate of heat removal from the above bed zone = %3.0f kW ',Hr,Hb)
