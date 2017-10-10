// Example 13.6
// Inversion with complex Poles
s=%s;
t=0:0.001:10
num=15*s^2-16*s-7;
den=(s+2)*(s^2+6*s+25);
F_s=num/den;
pfe=pfss(F_s); // partial fraction of the transfer function
// from pfe(1) we get
B=10;
C=-66;
alpha=3;// from pfe(1)
beta=sqrt(25-9);//Comparing the denominator of pfe(1) with standard 2nd orderequation
// Now
K=B+(%i*(alpha*B-C))/beta;
// From inverse Laplace Transfrom of pfe(2) we get 
f1=5*exp(-2*t)
K_m=abs(K); // Magnitude of K
phase_K=atan(imag(K),real(K));
g=K_m*exp(-alpha*t).*cos(beta*t+phase_K);
f=f1+g;
plot(t,f)
xlabel('t')
ylabel('f(t)')
title('Function Waveform')
