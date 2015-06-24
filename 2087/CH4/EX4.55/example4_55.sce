

//example 4.55
//calculate relation between R and P
clc;funcprot(0);
//given
P=[4 22 28 15 12 8 4 15 10 5];  //Precipitation
R=[0.2 7.1 10.9 4.0 3.0 1.3 0.4 4.1 2.0 0.3];  //runoff
for i=1:10
    Ps(i)=P(i)^2;
    Rs(i)=R(i)^2;
    PR(i)=P(i)*R(i);
end

s=0;t=0;u=0;q=0;w=0;
for i=1:10
    s=s+Ps(i);
    t=t+Rs(i);
    u=u+PR(i);
    q=q+P(i);
    w=w+R(i);
end
N=10;
a=(N*u-q*w)/(N*s-q^2);
b=(w-a*q)/N;
a=round(a*10000)/10000;
b=round(b*10000)/10000;
mprintf("Equation is:\n%fP%f.",a,b);
