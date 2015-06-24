//chapter 10
//example 10.2
//Calculate critical current value
//page 313
clear;
clc;
//given
r=0.02; // in m (radius of ring)
Hc=2E3; // in A/m (critical magnetic field at 5K)
pi=3.14; // value of pi used in the solutiion
//calculate
Ic=2*pi*r*Hc; // calculation of critical current value
printf('\nThe critical current value is \tIc=%.1f A',Ic);
