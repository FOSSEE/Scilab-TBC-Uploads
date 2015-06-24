clc
clear
//Input data
t1=15;//The inlet temperature of the air passing through the heat exchanger in degree centigrade
c1=30;//The inlet velocity of air in m/s
t2=800;//The outlet temperature of the air from heat exchanger in degree centigrade 
t2'==800;//The inlet temperature of the air to the turbine in degree centigrade
c2=30;//The inlet velocity of air to the turbine in m/s
t3=650;//The outlet temperature of the air from the turbine in degree centigrade
t3'==650;//the inlet temperature of the air to the nozzle in degree centigrade
c3=60;//The outlet velocity of the air from turbine in m/s
c3'==60;//Velocity at the inlet of the nozzle in m/s
t4=500;//The temperature at the outlet of the nozzle in degree centigrade
m=2;//Air flow rate in kg/s
cp=1.005;//Specific heat at constant pressure in kJ/kgK

//Calculations
Qh=m*cp*(t2-t1);//Rate of heat transfer to the air in the heat exchanger in kJ/s
P=m*[(cp*(t2'-t3))+((c2^2-c3^2)/2000)];//Power output from the turbine in kW
c4=[(2*1000)*[cp*(t3'-t4)]+c3^2]^(1/2);//Velocity of air at exit from nozzle in m/s

//Output 
printf('(a)Rate of heat transfer to the air in the heat exchanger q = %3.2f kJ/s \n (b)Power output from the turbine W = %3.1f kW \n (c)Velocity of air at exit from nozzle C = %3.2f m/s ',Qh,P,c4)
