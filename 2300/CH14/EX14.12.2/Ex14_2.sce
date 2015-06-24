//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
R1=2*1000//R1=input resistance in ohms in the non-inverting amplifier circuit
Rf=5*1000//Rf=feedback resistance in ohms
AV=1+(Rf/R1)//AV=voltage gain of the non-inverting amplifier circuit
disp(AV,"The voltage gain of the given non-inverting amplifier circuit is =")
