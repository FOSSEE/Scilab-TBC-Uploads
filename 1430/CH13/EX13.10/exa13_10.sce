// Example 13.10
// Step Response
// From figure 13.9(a)
t=0:0.01:10
L=1;
R=2;
C=1/16;
// from figure 13.9(b)
s=%s;
Z_s=s+32/(2*s+16);
H_s=1/(Z_s); // Network transfer function
V_s=1/s;// Laplace transform of Voltage source
I_s=H_s*V_s; // Transform of the step response
pfe=pfss(I_s); // Partial fraction expansion

// Inverse Laplace transform of pfe(1)
i_1=0.5;
 
// Inverse Laplace Transfrom of pfe(2)
i_2=-(0.5*exp(-4*t)+t.*exp(-4*t))

i=i_1+i_2;
plot(t,i)
xlabel('t')
ylabel('i(t)')
title("Step Response")
