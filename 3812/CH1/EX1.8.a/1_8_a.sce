//Example 1.8<a>
//draw the waveform of the signal x1(t)=r(t)-r(t-1)-u(t-1)
clc;
clear all;
t=-10:0.001:10;
for i=1:length(t)
if t(i)>=0 & t(i)<1 then
x(i)=t(i);
else
x(i)=0;
end
end
plot2d(t,x)
xtitle('Required figure','t','x(t)')
