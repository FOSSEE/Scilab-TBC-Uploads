// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.4
// Scilab Version 6.0.0 : OS - Windows


clc;
clear;

f = 60;                                                   // Frequency of the Three Phase Line in Hz
Q = 10;                                                   // Spacing between Adjacent Conductors in metres
T = 1590000;                                              // Size of the Conductor in cmil
l = 200;                                                  // Line Length in Kilometres

Ds = (0.0520)*(1/3.28);                                   // From Table A.4, the GMR of a 15,90,000 cmil 54/3 ACSR condutor in metres
Deq = nthroot([10*10*20],3);                              // Eqivalent GMR of a Conductor in metres
La = (2*10^-7)*(log(Deq/Ds))*(1000/1)*(200);              // Average Inductance of Phase a in Henry
Xa = (2*%pi*f*La);                                        // Inductive Reactance of Phase a in Ohm

printf('\n Average Inductance of Phase is  (La) = %0.3f  H', La);
printf('\n Inductive Reactance of Phase a is  (Xa) = %0.0f  Ohm', Xa);
