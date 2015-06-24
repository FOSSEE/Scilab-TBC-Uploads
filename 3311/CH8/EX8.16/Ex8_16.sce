// chapter 8
// example 8.16
// Determine duty cycle of chopper
// page-480
clear;
clc;
// given
Edc=200; // in V (dc source)
R=0.1; // in ohm
L=10; // in mH
Eb1=150, Eb2=-110; // in V (back emf)
I0=10; // in A
// calculate
L=L*1E-3; // changing unit from mH to H
// since I0=(E0-Eb)/R therefore we get,
E01=I0*R+Eb1; // calculation of average load voltage when Eb=150 V
E02=I0*R+Eb2; // calculation of average load voltage when Eb=-110 V
// since E0=2*Edc(alpha-0.5), therefore we get
alpha1=(E01/(2*Edc))+0.5; // calculation of duty cycle when Eb=150 V
alpha2=(E02/(2*Edc))+0.5; // calculation of duty cycle when Eb=-110 V
printf("\nThe duty cycle when Eb=%.f V is \t %.3f ",Eb1,alpha1);
if alpha1>0.5 then
    printf("\t\t It is forwarding mode");
else
    printf("\t\t It is reversing motoring mode");
end
printf("\nThe duty cycle when Eb=%.f V is \t %.3f ",Eb2,alpha2);
if alpha2>0.5 then
    printf("\t\t It is forwarding mode");
else
    printf("\t\t It is reversing motoring mode");
end
// Note : the answer vary slightly due to precise calculation