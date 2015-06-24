// Chapter6
// Page.No-193, Figure.No-6.5(a)
// Example_6_3
// Components of peak amplifier
// Given
clear;clc;
fp=16*10^3; // Peak frequency
Af=10; // Gain at peak frequency
C=0.01*10^-6; // Assume
L=1/(((2*%pi*fp)^2)*10^-8); // Simplifying fp=1/(2*pi*sqrt(L*C))
printf("\n Inductance is = %.4f H \n",L)
L=10*10^-3; // Approximate
R=30; // Assume the value of internal resistance of the inductor
Xl=2*%pi*fp*L; // Inductive reactance
Qcoil=Xl/R; // Figure of merit of the coil
printf("\n Figure of merit of the coil is = %.1f \n",Qcoil)
Rp=(Qcoil)^2*R; // Parallel resistance of the tank circuit
printf("\n Parallel resistance of the tank circuit is = %.1f ohm \n",Rp)
R1=100; // Assume the value of internal resisrance of the coil
Rf=-Rp/(1-(Rp/(Af*R1))); // Simplifying Af=(Rf||Rp)/R1
printf("\n Feedback resistance is = %.1f ohm \n",Rf)