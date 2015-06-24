
// Ex2_8

clc;
// Given:

h=6.6262*10^-34;// in J.s
f=17.24*10^6;// in Hz/T
m=5.05*10^-27;// in J/T
g=1.405;

// Solution:

E=g*m;
f=E/(h*10^6);// NMR frequency

printf("The NMR frequency is = %f MHz",f)



