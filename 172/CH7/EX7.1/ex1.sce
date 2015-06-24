//example 1
//rate of fuel consumption
clear
clc
W=136*0.7355 //output of automobile engine in kW
neng=0.3 //thermal efficiency of automobile engine
Qh=W/neng //energy output of fuel in kW
Ql=Qh-W //total rate of energy rejected to the ambient
qh=35000 //energy output of fuel in kJ/kg
m=Qh/qh //rate of fuel consumption in kg/s
printf("\n hence,total rate of energy rejected is Ql=%.0f kW.\n",Ql) 
printf("\n and rate of fuel consumption is m=%.4f kg/s.\n",m)