// example 6.9
// solve the IVP by euler method,
// with h=0.2, 0.1, 0.05;
// u'=f(t,u)
// u'=-2tu^2
deff('[z]=f(t,u)','z=-2*t*u^2');


[u,t] = Euler1(1,0,1,.2,f)      // h=0.2;

[u,t] = Euler1(1,0,1,0.1,f)      // h=0.1;


[u,t] = Euler1(1,0,1,0.05,f)      // h=0.05; 