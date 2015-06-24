//scilab 5.4.1
//Windows 7 operating system
//chapter 9 Basic Voltage and Power Amplifiers
clc
clear
//In a CE class A power amplifier
RL=12//RL=load resistance in ohms
n=8//n=primary-to-secondary turns ratio of a transformer
//Peak-to-peak swing of the signal current is 250mA
Im=(250*10^-3)/2//Im=ac collector current in Ampere
RL1=(n^2)*RL//RL1=RL'=resistance reflected to the primary for the resistance RL in presence of an ac signal
//Pac=(1/2)*Vm*Im where Pac=ac output power
//Pac=(1/2)*(Im^2)*RL1
Pac=(1/2)*(Im^2)*RL1
disp("W",Pac,"The output power is =")
