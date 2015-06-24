// chapter 13
// example 13.2
// Compute the required parameters snubber circuit
// page-809
clear;
clc;
// given
Em=380; // in V
dv_dt=50; // in V/us
L=0.1; // in mH
sigma=0.65; // assumption for damping factor as done in the book
// calculate
dv_dt=dv_dt/1E-6; // changing unit from V/us to V/s
L=L*1E-3; // changing unit from mH to H
C=(1/(2*L))*(0.564*Em/dv_dt)^2;
R=2*sigma*sqrt(L/C);
printf("\nThe capacitance is \t C=%.3f uF",C*1E6);
printf("\nThe resistance is \t R=%.2f ohm",R);
// Note :The answer vary slightly due to precise calculation