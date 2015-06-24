//example 15.6
clc; funcprot(0);
// Initialization of Variable
//solving for Ts
Tinfinity=293;
Tsurr=303;
epsilon=0.5;//emmisivity
alpha=0.8;
G=2000;
h=15;
sigma=5.67e-8;
deff('y=f(x)','y=alpha*G-h*(x-Tinfinity)-epsilon*sigma*(x^4-Tsurr^4)');
[x]=fsolve(307,f);
disp(x,"temperature in K");
disp(x-273,"temperature in degree C");
clear()
