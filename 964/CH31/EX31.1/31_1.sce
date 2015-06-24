clc;
clear;
//d2T/dx2=-10; equation to be solved
//T(0,t)=40; boundary condition
//T(10,t)=200; boundary condition
//f(x)=10; uniform heat source
//we assume a solution T=a*X^2 + b*x +c
//differentiating twice we get d2T/dx2=2*a
a=-10/2;
//using first boundary condition
c=40;
//using second boundary condtion
b=66;
//hence final solution T=-5*x^2 + 66*x + 40
function T=f(x)
    T=-5*x^2 + 66*x + 40
endfunction
count=1;
for i=0:0.1:11
    T(count)=f(i);
    count=count+1;
end
x=0:0.1:11
plot(x,T)
xtitle("Temperature(T) vs distance(x)","x (cm)","T (units)")

