//Example 13.7
// Inversion with a Triple pole
s=%s;
num=-s^2-2*s+14;
den=(s+4)^3*(s+5);
F=num/den;
pfe=pfss(F)
t=0:0.001:10
// Inverse Laplace transform of pfe(2)
f1=1*%e^(-5*t);

// Inverse Laplace transform of pfe(1)
f2=-exp(-4*t)+3*(t.*t).*exp(-4*t);

f=f1+f2;// t>=0;
plot(t,f);
xlabel('t');
ylabel('f(t)');
title("Function Waveform")

