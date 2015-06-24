//Example 3.10
clc
clear all
t=0:0.01:20;
function y=signal(x)
    y=x
endfunction
//Assume v(t) as ramp signal
v1=t;
v2=t+2;
//Assume R=1
i1=signal(v1)
i2=signal(v2)
a=2;
b=2;
subplot(4,2,1)
plot(t,a*v1)
xtitle("a*v1(t)","t in sec","a*v1(t)");
subplot(4,2,2)
plot(t,signal(a*v1))
xtitle("a*i1(t)","t in sec","a*i1(t)");
subplot(4,2,3)
plot(t,b*v2)
xtitle("b*v2(t)","t in sec","b*v2(t)");
subplot(4,2,4)
plot(t,signal(b*v2))
xtitle("b*i2(t)","t in sec","b*i2(t)");
c=(a*v1)+(b*v2);
subplot(4,2,5)
plot(t,c)
xtitle("v3(t)","t in sec","v3(t)");
subplot(4,2,6)
plot(t,signal(c))
xtitle("i3(t)","t in sec","i3(t)");
subplot(4,2,8)
plot(t,signal(a*v1)+signal(b*v2))
xtitle("LINEAR SYSTEM","t in sec","a*i1(t)+b*i2(t)");
