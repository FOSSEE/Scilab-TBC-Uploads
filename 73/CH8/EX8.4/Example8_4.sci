//Chapter 8_Applications of Operational Amplifier
//Caption : Device Temperature
//Example8.4: Forced air cooling provided for the device in Example8.3 lowers the ambient temperature at 60 degree celsius.What is temperature of the device?
//Solution:
clear;
clc;
Pd=500*10^-3;
Rt=150;//thermal resistance
Ta=60;//ambient temperature
Td=Pd*Rt+Ta;
disp('degree celsius',Td,'Temperature of the device is:')