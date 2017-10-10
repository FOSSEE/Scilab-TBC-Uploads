// SAMPLE PROBLEM 8/1
clc;funcprot(0);
// Given data 
W=25;// The weight of the body in lb
k=160;// lb/ft
v=2;// The downward velocity in  ft/sec
g=32.2;// The acceleration due to gravity in ft/sec^2

// Calculation
// (a)
delta_st=W/k;// The static spring deflection in ft
delta_st=delta_st*12;// in
// (b)
omega_n=sqrt(k/(W/g));// The natural frequency of the system in rad/sec
f_n=omega_n*(1/(2*%pi));// The natural frequency of the system in cycles/sec
// (c)
tau=1/f_n;// The system period in sec
printf("\n(a)The static spring deflection,delta_st=%0.4f ft (or)%1.3f in \n(b)The natural frequency of the system,omega_n=%2.2f rad/sec \n   The natural frequency of the system,f_n=%0.3f sec \n(c)The system period,tau=%0.3f sec",delta_st/12,delta_st,omega_n,f_n,tau);
