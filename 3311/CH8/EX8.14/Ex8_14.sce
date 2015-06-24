// chapter 8
// example 8.14
// Determine duty cycle for motoring, regenerating mode and to achieve regenerating mode and poweer returned
// page-477
clear;
clc;
// given
Edc=220; // in V (dc source)
R=0.1; // in ohm
L=10; // in mH
Eb=100; // in V (back emf)
I0=10; // in A
// calculate
L=L*1E-3; // changing unit from mH to H
// since I0=(E0-Eb)/R therefore we get,
E0=I0*R+Eb; // calculation of average load voltage in motoring mode
// since E0=alpha*Edc, therefore we get
alpha_1=E0/Edc; // calculation of duty cycle for motoring mode
alpha_2=Eb/Edc; // calculation of duty cycle for generating mode
alpha_3=(Eb-I0*R)/Edc; // calculation of duty cycle to achieve regenerating mode
P=Eb*I0-I0^2*R; // calculation of power returned to source during braking
printf("\nThe duty cycle for motoring mode is \t\t %.3f ",alpha_1);
printf("\nThe critical duty cycle for generating mode is \t %.4f ",alpha_2);
printf("\nThe duty cycle to achieve regenerating mode is \t %.2f ",alpha_3);
printf("\nThe power returned to source during braking is \t %.f W",P);