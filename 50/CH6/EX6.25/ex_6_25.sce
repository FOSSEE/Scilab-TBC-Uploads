// example 6.25
// caption: solving the IVP by adams-bashforth 3rd order method.
// u'=f(t,u)
// u'=-2tu^2
//u(0)=1,h=0.2;
deff('[z]=f(t,u)','z=-2*t*u^2');

adamsbashforth3(1,0,1,.2,f)       // calling the function,
