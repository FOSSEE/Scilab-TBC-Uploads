// Example 13.8
// Inversion with Time delay
s=%s;
// x(t)=20*u(t)40*u(t-3)
// time domain analysis for the response y(t) yields the DE
// y'(t)-5*y(t)=-x(t)=-20*u(t)+40*u(t-3)--equation (1)
// after taking Laplace transform of equation (1)
disp("Y(s)=(-20+40*exp(-3*s))/(s*(s-5)");
disp("=> Y(s)= F1_s-2*F1_s*exp(-3*t)")
F1_s= -20/(s*(s-5));
pfe=pfss(F1_s);

// Taking inverse Laplace of pfe, we get
f1=4-4*exp(5*t); 

t=0:0.001:5;
//from expansion of Y(s)
y=4-4*exp(5*t)-(8-8*exp(5*(t-3))); // Using Time delay property , t>=0
plot(t,y)
xlabel('t')
ylabel('y(t)')
title('Function Waveform')
