// Calculating the sensitivity and maximum output voltage
clc;
Se_thermocouple=500-(-72);
disp(Se_thermocouple,'Sensitivity of thermocouple (micro V/degree C)=')
Vo=Se_thermocouple*100*10^-6;
disp(Vo,'maximum output voltage(V)=')