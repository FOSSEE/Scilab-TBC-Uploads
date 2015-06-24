//Tested on Windows 7 Ultimate 32-bit
//Chapter 11 Oscillators and Multivibrators Pg no. 355 and 356
clear;
clc;

//Given
//Figure E 11.1

L=20D-3;//colpitts inductance in henry
C1=0.2D-6;//colpitts capacitor C1 in farads
C2=0.02D-6;//colpitts capacitor C2 in farads

//Solution

Ce=C1*C2/(C1+C2);//equivalent capacitance in farads
f0=1/(2*%pi*sqrt(L*Ce));//frequency of oscillations in hertz
printf("Frequency of oscillations f0 = %.2f kHz",f0/10^3);
