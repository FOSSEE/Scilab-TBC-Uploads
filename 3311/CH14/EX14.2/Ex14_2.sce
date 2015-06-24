// chapter 14
// example 14.2
// Compute the speed at which motor can hold the load by regenerative braking
// page-863-864
clear;
clc;
// given
T=100; // in Nm (torque)
E=220; // in V
N1=960; // in rpm
Ia=80; // in A (armature current)
Ra=0.06; // in ohm (armature resistance)
// calculate
Eb1=E-Ia*Ra; // calculation of bcak emf at 960 rpm
w1=N1*2*%pi/60; // calculation of rated speed
T1=Eb1*Ia/w1; // calculation of rated motor torque 
// since T=Ka*phi*Ia, therefore we get
Ka_phi=T1/Ia;
Ia2=T/Ka_phi; // calculation of armature current at T=100 Nm
Eb2=E+Ia2*Ra; // calculation of corresponding back emf
w2=(Eb2/Eb1)*w1; // calculation of speed at which motor can hold the load by regenerative braking
N2=w2*(60/(2*%pi));
printf("\nThe speed at which motor can hold the load by regenerative braking is \t w2=%.2f rad/s or \t N2=%.f rpm",w2,N2)
// Note :The value of torque given is T=100 Nm but the author has used T=1000 Nm in the calculation. Thats why the answer in the book is wrong