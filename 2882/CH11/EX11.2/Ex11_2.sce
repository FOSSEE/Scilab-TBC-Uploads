//Tested on Windows 7 Ultimate 32-bit
//Chapter 11 Oscillators and Multivibrators Pg no. 356
clear;
clc;

//Given
//Figure E 11.1

L=20D-3;//colpitts inductance in henry
C1=0.2D-6;//colpitts capacitor C1 in farads
C2=0.02D-6;//colpitts capacitor C2 in farads
Qa=10;//Q point (a)
Qb=5;//Q point (b)

//Solution

Ce=C1*C2/(C1+C2);//equivalent capacitance in farads
disp("(a)");
f0=1/(2*%pi*sqrt(L*Ce))*sqrt(Qa^2/(Qa^2+1));//frequency of oscillations in hertz
printf("Q = %d\n",Qa);
printf("Frequency of oscillations f0 = %.f Hz",f0);

disp("(b)");
f0=1/(2*%pi*sqrt(L*Ce))*sqrt(Qb^2/(Qb^2+1));//frequency of oscillations in hertz
printf("Q = %d\n",Qb);
printf("Frequency of oscillations f0 = %.f Hz",f0);

//Round-off error in textbook
