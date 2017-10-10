//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 12 ; Example 12.1
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

Tr=0;
Ka=100;
Ta=0.05;
Vrmax=5;
Vrmin=-5;
Ke=1;
Te=0.26;
Kf=0.01;
Tf=1;

Efd=2.9135;             //Value taken from Example 11.10
Vt=1.0946;              //Value taken from Example 11.10

Vr=Ke*Efd;              //Initial value of Vr
Vf=0;                   //Initial value of vf
Vref=(Vr/Ka)+Vt+Vf;     //Initial value of Vref

printf('The initial value of Vr is %.4f\n',Vr)
printf('The initial value of Vf is %.4f\n',Vf)
printf('The initial value of Vref is %.4f\n',Vref)

//Section 'b' of this problem cannot be simulated using current version of Scilab
