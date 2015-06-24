//Chapter 12_Signal Generators
//Caption : 555 Timer
//Example12.6: Calculate (a)Tc (b)Td, and (c)the free running frequency for the timer 555 connected in astable mode.Given Ra=6.8kilo Ohm; Rb=3.3 kilo Ohm; C=0.1 uF. What is the duty cycle ,d,of the circuit?
//Solution:
clear;
clc;
Ra=6.8*10^3;
Rb=3.3*10^3;
C=0.1*10^-6;
// Using equation for astable multivibrator we have
Tc=0.69*(Ra+Rb)*C;//charging time
Td=0.69*Rb*C;//discharging time
f=1.44/((Ra+2*Rb)*C);//free running frequency
d=Rb/(Ra+2*Rb);//duty cycle
disp('ms',Tc*10^3,'charging time of 555 timer in astable mode is:')
disp('ms',Td*10^3,'discharging time of 555 timer in astable mode is:')
disp('kHz',f/10^3,'free running frequency of 555 timer in astable mode is:')
disp(d,'duty cycle of 555 timer in astable mode is:')