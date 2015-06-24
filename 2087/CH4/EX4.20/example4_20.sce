

//example 4.20
//calculate relation between R and P
clc;funcprot(0);
//given
P=[72.2 70.1 73.3 42.5 81.3 50.6 52.9 59.4 60.3 64.3 68.8 56.7 77.2 40.5 44.1 65.5];  //Precipitation
R=[24.1 22.7 25.6 11.3 28.4 12.7 13.4 15.7 16.2 17.7 19.2 14.9 25.4 10.6 11.7 17.9];  //runoff
for i=1:16
    Ps(i)=P(i)^2;
    Rs(i)=R(i)^2;
    PR(i)=P(i)*R(i);
end

s=0;t=0;u=0;q=0;w=0;
for i=1:16
    s=s+Ps(i);
    t=t+Rs(i);
    u=u+PR(i);
    q=q+P(i);
    w=w+R(i);
end
N=16;
a=(N*u-q*w)/(N*s-q^2);
b=(w-a*q)/N;
b=round(b*1000)/1000;
a=round(a*10000)/10000;
mprintf("Equation is:\n%fP%f.",a,b);

