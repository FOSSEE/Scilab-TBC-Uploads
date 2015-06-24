//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
R1=1000//R1=input resistance in ohms in the inverting amplifier circuit
Rf=3*1000//Rf=feedback resistance in ohms
v1=2//v1=input voltage in the inverting terminal of an amplifier circuit
vo=-(Rf/R1)*v1//vo=output voltage
disp("V",vo,"Output voltage is=")
disp("Output voltage is negative as it is the circuit of inverting amplifier")
disp("kilo ohm",R1/1000,"Input resistance Rin=R1 is =")
i=v1/R1//i=input current
disp("mA",i*1000,"The input currrent is =")
