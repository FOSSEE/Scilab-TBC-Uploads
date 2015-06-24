//Calculating electromagnetic torque
//Chapter 2
//Example 2.9
//page 98
clear;
clc;
disp("example 2.9")
E=200      //emf induced
I=15        //armature current
n=1200          //speed in rpm
omega=(2*3.14*n)/60;
printf("omega=%f \n",omega)
T=(E*I)/omega;
printf("electromagnetic torque=%f Nm",T)