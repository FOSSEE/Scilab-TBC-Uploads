clc
//Initialization of variables
g=981 //cm/s^2
Cd=0.6
Q=1200
d=3 //cm
l=30 //cm
b=30 //cm
dh=5 //cm
h1=9 //cm
//calculations
function y =fun1(h)
    y= l*b/(Q - Cd*%pi/4 *d^2 *sqrt(2*g*h))
endfunction
t=intg(h1,h1+dh,fun1)
t=126
//results
printf("Time required = %d sec",t)
