//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
R=2*1000//R=feedback resistance in ohms in the differentiator circuit
C=0.01*10^-6//C=input capacitance in farad in the differentiator circuit
//dvi/dt=1.5V/1ms for 0<t<1ms (given ramp input signal)
//output voltage of a differentiator is given as vo=-RC(dvi/dt)
d=1.5/(10^-3)//d=dvi/dt=1.5V/1ms
vo=-R*C*d
disp("V",vo,"Output voltage of a differentiator is ")
disp("Hence for <t<1 ms,vo=-0.03V=-30mV.Otherwise,vo=0V")
