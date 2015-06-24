//Chapter 8_Applications of Operational Amplifier
//Caption : Device Temperature
//Example8.3:a)The ambient temperature of the device of Example8.2 rises above 90 degree celsius. What is the new value of Td if it still generates 500 mW?
//a)Solution:
clear;
clc;
Pd=500*10^-3;
Rt=150;//thermal resistance
Ta=90;//ambient temperature
Td=Pd*Rt+Ta;
disp('degree celsius',Td,'New value of device temperature is:')