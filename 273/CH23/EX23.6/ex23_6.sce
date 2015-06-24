clc;clear;
//Example 23.6
//calculation of frequency and phase difference

//given values
t=18*10^-6;//relaxation  time in s

//calculation
f=1/(2*%pi*t);
disp(f,'frequency at which real and imaginary part of complx dielectric constant are equal is');
alpha=atan(1)*180/%pi;// phase difference between current and voltage( 1 because real and imaginry parts are equal of the dielectric constant)
disp(alpha,'phase diffeerence (in degree) is');