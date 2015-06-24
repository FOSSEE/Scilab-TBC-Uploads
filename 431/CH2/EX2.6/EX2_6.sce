//Calculating emf generated onopen circuit condition
//Chapter 2
//Example 2.6
//page 93
clear;
clc;
disp("example 2.5")
P=8            //number of poles
A=8            //number of parallel paths in the armature
Z=960          //number of conductors
N=400          //speed in rpm
phi=0.04       //flux per pole
E=(phi*Z*N*P)/(60*A)        //emf generated onopen circuit condition
printf("emf generated on open circuit condition, E=%d volts",E)