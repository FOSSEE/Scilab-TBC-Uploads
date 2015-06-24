clear;
//clc();

// Example 7.7
// Page: 154
printf("Example-7.7  Page no.-154\n\n");

//***Data***//

T_r = 0.889;
P_r = 1.815;

// Using the properties of n-butane from appendix A.1 and the equation 7.W, we find that
// (f/P) = v = phi = exp((P_r/T_r)*f(T_r,w))
// Say,    f(T_r,w) = f_f
f_f = -0.48553;
// so
v = exp((P_r/T_r)*f_f);
phi = v;
printf(" The value of v=phi for n-butane at given condition is %f",v);