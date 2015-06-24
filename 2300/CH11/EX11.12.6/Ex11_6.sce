//scilab 5.4.1
//Windows 7 operating system
//chapter 11 Sinusoidal oscillator and multivibrators
clc
clear
//Q=Quality factor
L=3.5//L=inductance in henry
f=450000//f=frequency in Hz
R=9050//R=resistance in ohm
Q=(2*%pi*f*L)/R
format("v",5)//format() sets the current printing format
disp(Q,"Quality factor is")
