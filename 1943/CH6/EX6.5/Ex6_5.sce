
clc
clear
//Input data
ws=64;//The steam flow rate in kg/s
p=60;//The pressure at which steam leaves the boiler in bar
m=0.02;//Moisture contant in the steam 
wf=62;//The feedwater flow rate in kg/s
Pf=3;//concentration of feedwater in ppm
wm=2;//The flow rate of makeup water 
Pm=50;//concentration of makeup water in ppm
Ps=5;//Leaving the drum water in ppm
Pw=1000;//The concentration in the drum water in ppm
mf=7;//The fuel burning rate in kg/m
CV=23;//The heating value in MJ/kg
ta=30;//The room temperature in degree centigrade
hf=1213.35;//Enthalpy of saturated liquid at 60 bar in kJ/kg
ha=125.79;//Enthalpy at ambient temperature in kJ/kg

//Calculations
BD=[(wf*Pf)+(wm*Pm)-(m*ws*Ps)]/1000;//The rate of blowdown in kg/s
E=[(BD*(hf-ha))/(mf*CV*1000)]*100;//The energy loss in blowdown in percentage
S=m*ws*Ps*10^-6*3600*24;//Scale deposition in superheater tubes

//Output
printf('(a)The blowdown required = %3.4f kg/s \n (b) Heat loss in blowdown as a percentage of total heat released in the furnace = %3.2f percentage \n (c) The deposition of scale in superheater tube = %3.3f kg/day ',BD,E,S)
