// example 6.18,
// caption: use of 4th order runge kutta method,

// u'=f(t,u)
// u'=-2tu^2
deff('[z]=f(t,u)','z=-2*t*u^2');

RK4(1,0,.4,.2,f)       // calling the function,