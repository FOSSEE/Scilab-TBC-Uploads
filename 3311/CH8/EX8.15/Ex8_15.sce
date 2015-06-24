// chapter 8
// example 8.14
// Determine duty cycle for motoring, regenerating mode and to achieve regenerating mode, poweer returned and switching frequency
// page-478
clear;
clc;
// given
Edc=220; // in V (dc source)
R=0.1; // in ohm
L=10; // in mH
Eb=100; // in V (back emf)
I0=10; // in A
f=5; // in KHz (output frequency)
// calculate
L=L*1E-3; // changing unit from mH to H
// since I0=(E0-Eb)/R therefore we get,
E0_m=I0*R+Eb; // calculation of average load voltage in motoring mode
// since E0=(2*alpha-1)*Edc, therefore we get
alpha_m=(E0_m/Edc+1)/2; // calculation of duty cycle for motoring mode
alpha_c=1-alpha_m; // calculation of duty cycle for generating mode
// since I0=(Eb-E0)/R  during regeneration mode, therefore we get
E0_r=Eb-I0*R;
// since E0=-(2*alpha_r-1)*Edc
alpha_r=(1-E0_r/Edc)/2;
P=Eb*I0-I0^2*R; // calculation of power returned to source during braking
f_s=f/2;
printf("\nThe duty cycle for motoring mode is \t\t alpha_m=%.2f ",alpha_m);
printf("\nThe critical duty cycle for generating mode is \t alpha_c=%.2f ",alpha_c);
printf("\nThe duty cycle to achieve regenerating mode is \t alpha_r=%.3f ",alpha_r);
printf("\nThe power returned to source during braking is \t P=%.f W",P);
printf("\nThe switching frequency of the device is \t fs=%.1f KHz",f_s);
