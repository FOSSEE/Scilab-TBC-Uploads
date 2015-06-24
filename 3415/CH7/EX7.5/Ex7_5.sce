//fiber optic communications by joseph c. palais
//example 7.5
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
R=50//load resistor in ohms
eta=0.01//efficiency
e=1.6*10^-19//Charge of electron in columbs
lambda=0.8*10^-6//wavelength in m
h=6.63*10^-34//planks constant
c=3*10^8//speed of light in m/s
P=1*10^-6//optic power in W
G=5^9//current amplification
Row=.0064//reponsivity in A/W
//to find
Row_amp=G*Row//amplified responsivity in A/W
i=Row_amp*P//current in A
v=i*R//output voltage in V
mprintf('Responsivity=%fkA/W',Row_amp/1000)//division by 1000 to make unit from A to KA
mprintf('\nCurrent=%fmA',i*1000)//multiplication by 1000 to make unit from A to mA
mprintf('\nVoltage across the 50 ohm load resistor=%fmV',v*1000)//multiplication by 1000 to make unit from V to mV
