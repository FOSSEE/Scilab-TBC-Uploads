// example 6.17,
// caption: solve by 1)modified euler cauchy, 2)heun method

// h=0.2
// 1) modified euler cauchy method,

// u'=f(t,u)
// u'=-2tu^2
deff('[z]=f(t,u)','z=-2*t*u^2');

modifiedeuler(1,0,.4,.2,f)       // calling the function,

// 2) heun method,
deff('[z]=f(t,u)','z=-2*t*u^2');


heun(1,0,.4,.2,f)       // calling the function,
