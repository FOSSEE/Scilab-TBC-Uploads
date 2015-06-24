//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
R1=5*1000//R1=input resistance in ohms in the given op-amp circuit
Rf=10*1000//Rf=feedback resistance in ohms
vi=5//vi=input voltage at the inverting terminal of an op-amp
V=4//V=voltage at the non-inverting terminal of an op-amp
//By applying superposition theorem 
Vo=((1+(Rf/R1))*V)+(-(Rf/R1)*vi)
disp("V",Vo,"Output voltage Vo of the circuit is =")
