// chapter 8
// example 8.11
// Compute the current in the motor
// page-464-465
clear;
clc;
// given
Edc=180; // in V (dc source)
Ra=0.4; // in ohm(armature resistance)
Eb=80; // in V (back emf)
i_a=80; // in A(armature current)
La=8; // in mH (armature inductance)
t=8; // in ms
t_off=1; // in ms 
// calculate
La=La*1E-3; // changing unit from mH to H
tou=La/Ra; // calculation of time constant
t_off=t_off*1E-3; // changing unit from ms to s
t=t*1E-3; // changing unit from ms to s
i_t=((Edc-Eb)/Ra)*(1-exp(-t_off/tou))+i_a*exp(-t_off/tou);
t8=t_off+t; // time instant 8ms after SCR turns off
i_f=i_t*exp(-t8/tou);
printf("\nThe current at the instant of Thyristor turns OFF is \t %.3f A",i_t);
printf("\nThe current %.f ms after Thyristor turns OFF is \t %.2f A",t*1E3,i_f);
// Note: The value of tou has been calculated wrong in the book due to which answer in the book are wrong