//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.4
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Zy = (3+(%i*4));                       //Y load impedance per phase
Xn = 2;                                //inductive reactance in ohm per phase
Xc = -%i*30;                           //capacitor bank reactance in ohm per phase
Zn = %i*2                              //neutral impedance in ohm per phase
Zdel = Xc/3;

Z0 = Zy+(3*Zn);                       //zero load sequence impedane in ohm
Z1 = 1/(1/Zy+1/Zdel);                 //positive load sequence impedane in ohm
Z2 =Z1;                               //negativa load sequence impedane in ohm
printf('\nThe zero load sequence impedance Z0 is %0.4f + %0.4fi ohm',real(Z0), imag(Z0));
printf('\nThe amplitude of positive load sequence impedance Z1 is %.4f ohm and its angle is %.4f degree ',abs(Z1), atand(imag(Z1), real(Z1)));
printf('\nThe amplitude of negative load sequence impedance Z2 is  %.4f ohm and its angle is %.4f degree ',abs(Z2), atand(imag(Z2), real(Z2)));

