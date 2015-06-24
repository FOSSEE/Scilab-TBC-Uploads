
// Example 4-3, page 97

clear;clc; close;

// Given data
Vrms=120;// in volts
// 10:1 step down transformer

// Calculations

Vp1=Vrms/0.707;// peak primary voltage in volts
Vp2=Vp1/10;// peak secondary voltage in volts
// the full wave rectifier acts like 2 back-to-back half-wave rectifiers.because of the center tap,the input voltage to each half-wave rectifier is only half the secondary voltage
Vpin=0.5*Vp2;
disp("Volts",Vpin,"Peak input voltage =")

Vpout=Vpin;// ideally 
disp("Volts",Vpout,"Peak voltage =")

Vpout=Vpin-0.7;// using second approximation
disp("Volts",Vpout,"Peak voltage =")



