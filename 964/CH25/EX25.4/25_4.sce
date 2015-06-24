clc;
clear;
m=68.1;
g=9.8;
c=12.5;
a=8.3;
b=2.2;
vmax=46;
function yp=f(t,v)
    yp=g-c*v/m;
endfunction
v0=0;
t=0:15;
x=ode(v0,0,t,f);
disp(x)
plot(t,x,'.-')

function yp=f1(t,v)
    yp=g-(c/m)*(v+a*(v/vmax)^b)
endfunction
x1=ode(v0,0,t,f1);
plot(t,x1)
xtitle("velocity vs time","t (s)","v (m/s)")
h1=legend(["Linear";"Nonlinear"])
