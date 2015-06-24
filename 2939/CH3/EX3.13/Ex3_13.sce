
// Ex3_13
clc;

// Given:
I0=3/2;// ground state of spin

// Solution:
I1=I0+1;
I2=I0+2;
I3=I0+3;
K=1;// Assumed as some constant
// Formula: E=(h^2/(2*I))*((I*(I+1))-I0*(I0+1))
// Consider   K=(h^2/(2*I))=1

E1=K*((I1*(I1+1))-(I0*(I0+1)));// For 1 excited state

E2=K*((I2*(I2+1))-(I0*(I0+1)));// For 2 excited state

E3=K*((I3*(I3+1))-(I0*(I0+1)));// For 3 excited state

printf("The expression for 1st, 2nd, and 3rd excited states are K times %f, %f & %f respectively.",E1,E2,E3)
