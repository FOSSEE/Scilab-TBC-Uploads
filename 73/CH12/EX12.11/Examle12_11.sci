//Chapter 12_Signal Generators
//Caption : Design
//Example12.11: A 555 one shot circuit with Vcc=16 V is to have a 2 ms output pulse width.Design a suitable Circuit.Ithres=0.25 uA(max.) from data sheet of the device.
//Solution:
clear;
clc;
Ithres=0.25*10^-6;
T=2*10^-3//output pulse width
Vcc=16;//power supply to 555
//The value of minimum capacitor charging current Ic should be much greater than the threshold Current Ithres
Icmin=1000*Ithres;//since Icmin>>Ithres
Ra=Vcc/(3*Icmin);
C=T/(1.1*Ra);
disp('kilo Ohm',Ra/10^3,'resitance design is:')
disp('uF',C*10^6,'Capacitor design is:')