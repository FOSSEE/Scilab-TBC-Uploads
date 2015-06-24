// example 6.12,
// caption: solve the IVP by backward euler method,
// with h=0.2,
// u'=f(t,u)
deff('[z]=f(t,u)','z=-2*t*u^2');


[u] = backeuler(1,0,0.4,.2,f)     // h=0.2;

