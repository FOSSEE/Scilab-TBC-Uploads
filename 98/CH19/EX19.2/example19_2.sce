//Chapter 19
//Example 19_2
//Page 484

clear;clc;

f=50;
v=11*1e3;
x=5;
c=0.01*1e-6;

l=x/2/%pi/f;
emax=sqrt(2)*v/1000/sqrt(3);
fn=1/2/%pi/sqrt(l*c);
t=1/2/fn;
avg=2*emax/t;

printf("Inductance per phase = %.5f H \n\n", l);
printf("(i) Maximum value of recovery voltage = %.2f kV \n\n", emax);
printf("    Peak restriking voltage = %.2f kV \n\n", 2*emax);
printf("(ii) Frequency of oscillation = %.0f Hz \n\n", fn);
printf("(iii) Time t at which peak restriking voltage occurs = %.2f us \n\n", t*1e6);
printf("      Average rate of rise of recovery voltage = %.0f kV/sec \n\n", avg);
