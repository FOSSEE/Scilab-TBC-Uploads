// chapter 14
// example 14.1
// Determine motor terminal voltage and the value of flux as a percentage of rated flux
// page-862-863
clear;
clc;
// given
E=220; // in V
N1=960; // in rpm
Ia=80; // in A (armature current)
Ra=0.06; // in ohm (armature resistance)
N2=620; // in rpm
N3=1200; // in rpm
// calculate
Eb1=E-Ia*Ra; // calculation of bcak emf at 960 rpm
w1=N1*2*%pi/60; // calculation of rated speed
// since K1*phi1*w1=Eb1, therefore we get
K1_phi1=Eb1/w1;
// since Eb1/Eb2=N1/N2,  therefore we get
Eb2=(N2/N1)*Eb1; // calculation of back emf at 620
Em=Eb2+Ia*Ra; // calculation of motor terminal voltage
w3=N3*2*%pi/60;
// since Eb3=Ka*phi2*w3 and phi2=k*phi1, therefore we get
// Eb3=K*phi1*w3  (i)
// since T1=T2 or Ka*phi1*Ia1=Ka*phi2*Ia2 or Ia2=(phi1/phi2)*Ia1 or
//   Ia2=Ia1/K   (ii)
// since E=Eb3+Ia2*Ra , therefore Ia2=(E-Eb3)/Ra     (iii)
// from (i) (ii) and (iii), we get  E=K*K1_phi1*w3+(Ia1/K)*Ra
// and hence solving for K we get a quadratic equation (K1_phi1*w3)K^2-(E)K+Ia*Ra=0
// solving the quadratic equation
K1=(-(-E)+sqrt((-E)^2-4*K1_phi1*w3*Ia*Ra))/(2*K1_phi1*w3); // calculation of value of flux1
K2=(-(-E)-sqrt((-E)^2-4*K1_phi1*w3*Ia*Ra))/(2*K1_phi1*w3); // calculation of value of flux2
printf("\nThe motor terminal voltage is \t Em=%.2f V",Em);
printf("\nThe value of flux is \t K1=%.1f ",K1);
printf("\nThe value of flux is \t K2=%.3f ",K2);
printf("\nThe feasible value of K is %.1f",K1)
// Note :The answer vary slightly due to precise calculation