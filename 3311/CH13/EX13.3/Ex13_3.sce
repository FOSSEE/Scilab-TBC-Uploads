// chapter 13
// example 13.3
// Design a snubber circuit
// page-809
clc;
clear;
// given
VA=5; // in kVA
Es=120; // in V (secondary voltage)
f=400; // in Hz (switching frequency)
L=100; // in uH 
Ep=200; // in V (peak transient voltage)
sigma=0.75; // assumption for damping factor as done in the book
// calculate
VA=VA*1E3; // changing unit from kVA to VA
L=L*1E-6; // changing unit from uH to H
C=10*VA*60/(Es^2*f); // calculation of capacitance in uF
Esp=Es*sqrt(2); // calculation of peak switching voltage ratio
Ep_Esp=Ep/Esp; // calculation of peak transient voltage Vs peak switching voltage ratio
R=2*sigma*sqrt(L/(C*1E-6)); // calculation resistance
printf("\nThe capacitance is \t C=%.2f uF",C);
printf("\nThe peak transient voltage Vs peak switching voltage ratio is \t %.2f",Ep_Esp);
printf("\nThe resistance is \t R=%.1f ohm",R);
// Note :The answer vary slightly due to precise calculation