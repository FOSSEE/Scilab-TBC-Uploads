clc;
clear;
function y=f(x)
    y=(0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5)
endfunction
tval=1.640533;
a=0;
b=0.8;
fa=f(a);
fb=f(b);
l=(b-a)*((fa+fb)/2);
Et=tval-l;//error
et=Et*100/tval;//percent relative error

//by using approximate error estimate

//the second derivative of f
function y=g(x)
    y=-400+4050*x-10800*x^2+8000*x^3
endfunction
f2x=intg(0,0.8,g)/(b-a);//average value of second derivative
Ea=-(1/12)*(f2x)*(b-a)^3;
disp(Et,"The Error Et=")
disp("%",et,"The percent relative error et=")
disp(Ea,"The approximate error estimate without using the true value=")
