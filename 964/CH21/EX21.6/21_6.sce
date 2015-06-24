clc;
clear;
function y=f(x)
    y=(0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5)
endfunction
a=0;
b=0.8;
tval=1.640533;
//part a
n=3;
h=(b-a)/n;
fa=f(a);
fb=f(b);
j=a+h;
s=0;
count=1;
while j<b
    s=s+3*f(j);
    count=count+1;
    j=j+h;
end
l=(b-a)*(fa+s+fb)/(8);
disp("Part A:")
disp(l,"l=")
Et=tval-l;//error
et=Et*100/tval;//percent relative error

//by using approximate error estimate

//the fourth derivative of f
function y=g(x)
    y=-21600+48000*x
endfunction
f4x=intg(0,0.8,g)/(b-a);//average value of fourth derivative
Ea=-(1/6480)*(f4x)*(b-a)^5;
disp(Et,"The Error Et=")
disp("%",et,"The percent relative error et=")
disp(Ea,"The approximate error estimate without using the true value=")

//part b
n=5;
h=(b-a)/n;
l1=(a+2*h-a)*(fa+4*f(a+h)+f(a+2*h))/6;
l2=(a+5*h-a-2*h)*(f(a+2*h)+3*(f(a+3*h)+f(a+4*h))+fb)/8;
l=l1+l2;
disp("---------------------------------------------------")
disp("Part B:")
disp(l,"l=")
Et=tval-l;//error
et=Et*100/tval;//percent relative error
disp(Et,"The Error Et=")
disp("%",et,"The percent relative error et=")
