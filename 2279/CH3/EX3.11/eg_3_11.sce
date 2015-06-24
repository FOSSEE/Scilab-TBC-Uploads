//Example 3.11
clc
clear all
t=0:0.001:0.5;
function i=signal(v)
    i=exp(v);
endfunction
//Assume v(t) as ramp signal
x1=2*ones(1,length(t));
x2=t+2;
//Assume R=1
y1=signal(x1)
y2=signal(x2)
a=2;
b=2;
subplot(4,2,1)
plot(t,a*x1)
xtitle("a*x1(t)","t in sec","a*x1(t)");
subplot(4,2,2)
plot(t,signal(a*x1))
xtitle("a*y1(t)","t in sec","a*y1(t)");
subplot(4,2,3)
plot(t,b*x2)
xtitle("b*x2(t)","t in sec","b*x2(t)");
subplot(4,2,4)
plot(t,signal(b*x2))
xtitle("b*y2(t)","t in sec","b*y2(t)");
c=(a*x1)+(b*x2);
subplot(4,2,5)
plot(t,c)
xtitle("x3(t)","t in sec","x3(t)");
subplot(4,2,6)
plot(t,signal(c))
xtitle("y3(t)","t in sec","y3(t)");
subplot(4,2,8)
plot(t,signal(a*x1)+signal(b*x2))
xtitle("NON-LINEAR SYSTEM","t in sec","a*y1(t)+b*y2(t)");
