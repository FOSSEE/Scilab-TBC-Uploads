clc;
clear;
function y=f(x)
    y=(0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5)
endfunction
a=0;
b=0.8;
tval=1.640533;
n=2;
h=(b-a)/n;
fa=f(a);
fb=f(b);
fh=f(h);
l=(b-a)*(fa+4*fh+fb)/(3*n);
disp(l,"l=")
Et=tval-l;//error
et=Et*100/tval;//percent relative error

//by using approximate error estimate

//the fourth derivative of f
function y=g(x)
    y=-21600+48000*x
endfunction
f4x=intg(0,0.8,g)/(b-a);//average value of fourth derivative
Ea=-(1/2880)*(f4x)*(b-a)^5;
disp(Et,"The Error Et=")
disp("%",et,"The percent relative error et=")
disp(Ea,"The approximate error estimate without using the true value=")

