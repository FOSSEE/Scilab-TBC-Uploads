
clc
clear
//Input data
tg=180;//The gas temperature in degree centigrade
p=250;//The draught produced by the ID fan in mm
nf=0.52;//The efficiency of the fan
Va=0.858;//Volume flow rate of air in m^3/kg
g=9.812;//gravitational force constant in m/s^2
Wf=10;//Coal rate in t/h
Wa=12.9;//Actual air required per kg fuel in kg air/kg fuel
ta=30;//Room temperature in degree centigrade

//Calculations
Wfg=[(Wf+(Wa*10))*1000]/3600;//Fuel gas required in kg/s
Vfg=[Va*(tg+273)]/(ta+273);//Volume flow rate of fuel gas in m^3/kg
ID=((Wfg*Vfg*p*g)/(nf))/1000;//ID fan motor capacity in kW

//Output
printf('The motor capacity of the ID fan is %3.2f kW ',ID)
