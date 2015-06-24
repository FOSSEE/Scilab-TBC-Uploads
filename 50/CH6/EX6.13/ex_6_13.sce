// example 6.13,
// caption: solve the IVP by euler midpoint method,
// with h=0.2,
// u'=f(t,u)
deff('[z]=f(t,u)','z=-2*t*u^2');
deff('[w]=fp(t,u)','w=-2*u^2-4*u*t');



[u] =  eulermidpoint(1,0,1,.2,f,fp)    // h=0.2;

