// chapter 14
// example 14.12
// Determine the range of frequencies of the chopper
// page-893
clear;
clc;
// given
I=80; // in A
E=480; // in V
N=960; // in rpm
Ra=0.25; // in ohm (armature resistance)
Rf=120; // in ohm (field resistance)
N1=400, N2=750; // in rpm (range of speed)
Ton=3; // in ms
Ef=480; // in V
// calculate
Ton=Ton*1E-3; // changing unit from ms to s
If=E/Rf; // calculation of field current
Ia=I-If; // calculation of armature current
Eb=E-Ia*Ra; // calculation of back emf
Eb1=(N1/N)*Eb; // calculation of back emf corresponding to N1=400 rpm
Ea1=Eb1+Ia*Ra; // calculation of terminal voltage corresponding to N1=400 rpm
T1=(E/Ea1)*Ton; // calculation of chopping period corresponding to N1=400 rpm
F1=1/T1; // calculation of frequency corresponding to N1=400 rpm
Eb2=(N2/N)*Eb; // calculation of back emf corresponding to N2=400 rpm
Ea2=Eb2+Ia*Ra; // calculation of terminal voltage corresponding to N2=400 rpm
T2=(E/Ea2)*Ton; // calculation of chopping period corresponding to N2=400 rpm
F2=1/T2; // calculation of frequency corresponding to N2=400 rpm
printf("\n\nThe range of frequencies of the chopper is \t %.2f Hz <= f <= %.2f Hz",F1,F2);
// Note: The answer vary slightly due to precise calculations