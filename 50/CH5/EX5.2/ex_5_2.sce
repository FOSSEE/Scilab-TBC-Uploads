// example 5.2
// evaluate fp(.8) and fpp(.8) with quadratic interpolation;

xL=[.4 .6 .8];
f=[.0256 .1296 .4096];
h=.2;

fp=(1/2*h)*(f(1)-4*f(2)+3*f(3))              
fpp=(1/h^2)*(f(1)-2*f(2)+f(3))                          // from equation 5.22c and 5.24c in the book;
