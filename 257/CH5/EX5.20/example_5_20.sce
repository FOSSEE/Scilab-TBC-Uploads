syms M2 K2 M1 K1 B
s=%s

a=(K2/s)+B
b=(1/(M1*s))/(1+((1/(M1*s)*(K1/s) )))
//shifting summing point S2 before 1/m2*s and interchange positions of S1 and S2 using associative law
c=(1/M2*s)*a
d=c/(1+c)
e=d*b
f=e/(1+(e*M2*s))
Y=f*(1/s)

disp(Y," Y/R = ")