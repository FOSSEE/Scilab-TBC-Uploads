clc
clear
//Input
F=10;//Quantity of fuel supplied during the trial of a diesel engine in kg/hr
CV=42500;//Calorific value of fuel in kJ/kg
r=20;//Air fuel ratio
T=20;//Ambient temperature in degrees celsius
mw=585;//Water circulated through the gas calorimeter in litres/hr
T1=35;//Temperature rise of water through the calorimeter in degrees celsius
T2=95;//Temperature of gases at exit from the calorimeter in degrees celsius
se=1.05;//Specific heat of exhaust gases in kJ/kgK
sw=4.186;//Specific heat of water in kJ/kgK

//Calculations
M=(F/60)*(r+1);//Mass of exhaust gases formed per minute
H=((mw/60)*sw*T1)+(M*se*(T2-T));//Heat carried away by the exhaust gases per minute in kJ/min
Hs=(F/60)*CV;//Heat supplied by fuel per minute in kJ/min
nh=(H/Hs)*100;//Percentage of heat carried away by the exhaust gas

//Output
printf('Percentage of heat carried away by exhaust gas is %3.2f percent',nh)
