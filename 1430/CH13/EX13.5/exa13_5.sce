// Example 13.5
// Inversion of a Third-order Function
R=12;
L=1;
C=1/20;
I_1=-2;
I_2=2;
s=%s;
num=I_1*s^2+(R/L)*I_1*s+I_2/(L*C);
den=s*(s^2+(R/L)*s+1/(L*C));
I_s=num/den;
pfe=pfss(I_s);
// From partial fraction expansion
A_1=2;
A_2=-5;
A_3=1;
s=roots(den);
// Taking the inverse Laplace transform we get
t=0:0.001:10
i=2*exp(s(3)*t)+A_2*exp(s(2)*t)+A_3*exp(s(1)*t)
plot(t,i)
xlabel('t')
ylabel('i(t)')
title('Current Waveform')
