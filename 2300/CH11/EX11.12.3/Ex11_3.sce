//scilab 5.4.1
//Windows 7 operating system
//chapter 11 Sinusoidal oscillator and multivibrators
clc
clear
L=20*10^-3//L=inductance in henry
C1=(200*10^(-12))//C1=capacitance in farad
C2=(300*10^(-12))//C2=capacitance in farad
Cs=((C1*C2)/(C1+C2))
f=1/(2*%pi*sqrt(L*Cs))
disp("kHz",f/10^3,"Frequency of oscillation is =")//converting f in terms of kHz
