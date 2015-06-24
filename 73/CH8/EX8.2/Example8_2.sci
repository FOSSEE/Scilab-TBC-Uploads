//Chapter 8_Applications of Operational Amplifier
//Caption : Device Temperature 
//Example8.2: For the device in Example8.1, Pdmax=500 mW. Determine the device temperature after equilibrium is attained for an ambient temperature of 75 degree celsius and if the device is subjected to maximum heat generation.Maximum allowable device temperature is 150 degree Celsius.
//Solution:
clear;
clc;
Pmax=500*10^-3;
Pd=Pmax;//since device is subjected to maximum heat generation
Rt=150;//thermal resitance
Ta=75;//ambient temperature
Td=Pd*Rt+Ta;
disp('degree celsius',Td,'device temperature is:')