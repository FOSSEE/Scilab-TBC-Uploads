clc;
clear;
function y=f(x)
    y=(0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5)
endfunction
a=0;
b=0.8;
tval=1.640533;
n=4;
h=(b-a)/n;
fa=f(a);
fb=f(b);
j=a+h;
s=0;
count=1;
while j<b
    if (-1)^count==-1 then
        s=s+4*f(j);
    else
        s=s+2*f(j);
    end
    count=count+1;
    j=j+h;
end
l=(b-a)*(fa+s+fb)/(3*n);
disp(l,"l=")
Et=tval-l;//error
et=Et*100/tval;//percent relative error

//by using approximate error estimate

//the fourth derivative of f
function y=g(x)
    y=-21600+48000*x
endfunction
f4x=intg(0,0.8,g)/(b-a);//average value of fourth derivative
Ea=-(1/(180*4^4))*(f4x)*(b-a)^5;
disp(Et,"The Error Et=")
disp("%",et,"The percent relative error et=")
disp(Ea,"The approximate error estimate without using the true value=")

