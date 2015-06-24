clc
//Example 5.1
//Calculate the increase in temperature due to falling water of waterfall
g=9.81;//m/s^2 acc. due to gravity
dz=100;//m Height of waterfall
du=g*dz;//J/kg Change in internal energy
Cv=4184;//J/kg/K;
dT=du/Cv//K Change in temperature
printf("Change in temperature is %f K or degree centigrade",dT);