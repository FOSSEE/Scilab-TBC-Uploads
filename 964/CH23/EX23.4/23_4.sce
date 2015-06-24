clc;
clear;
function y=f(x)
    y=0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5
endfunction
a=0;
b=0.8;
Q=intg(0,0.8,f);
disp(Q,"Q=")
x=[0 0.12 0.22 0.32 0.36 0.4 0.44 0.54 0.64 0.7 0.8];
y=f(x);
integral=inttrap(x,y)
disp(integral,"intergral=")
disp(diff(x),"diff(x)=")
d=diff(y)./diff(x);
disp(d,"d=")
