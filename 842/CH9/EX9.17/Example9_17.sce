//clear//
//Example9.17:Analysis and Characterization of LTI System
//Lapalce Transform h(t) = exp(-t).u(t)
syms t s;
h =laplace('%e^(-t)',t,s);
disp(h)
//Result
//1/(s+1) 
