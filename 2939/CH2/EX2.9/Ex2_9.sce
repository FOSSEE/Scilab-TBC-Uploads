
// Ex2_9
clc;

// Given:

h=6.6262*10^-34;// in J.s
f=30.256*10^6;// in Hz/T
m=5.05*10^-27;// in J/T
g1=5.585;
g2=1.405;

// Solution:
H1=(h*f)/(g1*m);
H2=(h*f)/(g2*m);
printf("\n Magnetic field required for a proton is = %f T",H1)
printf("\n Magnetic field required for C 13 is = %f T",H2)
