clc;
clear all;
//chapter 3
//page no 75
//example 3.1
A=1    //arbitrary value provided
T=10    //T represents tau (arbitrary value provided)
//plot for non periodic pulse
t=-2*T:.001:2*T;
vt=[zeros(-2*T:.001:-T/2) A*ones(-T/2+.001:.001:T/2-.001) zeros(T/2:.001:2*T)]
clf
subplot(211)
plot2d(t,vt,[2],rect=[-2*T,0,2*T,A+1])
xtitle('(a) Non periodic pulse','t','v(t)')

//plot for amplitude spectum
f=-4/T:.001:4/T;
Vf=[]
for i=1:length(f)
    if f(i)==0 then
        Vf=[Vf A*T];    //according to L'Hopitals rule sin(x)/x=1 at lim x->0
        else
            Vf=[Vf A*T*sin(%pi*f(i)*T)/(%pi*f(i)*T)]
end
end
subplot(212)
plot2d(f,Vf,[5])
xtitle('(b) Amplitude spectrum','f','V(f)')
xgrid
