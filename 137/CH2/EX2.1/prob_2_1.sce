clc;
//page no 17
//prob 2.1 b]

t0=-1;t1=1;
y=integrate('t^2','t',t0,t1);
disp(+'watt',y/2,'power of signal');