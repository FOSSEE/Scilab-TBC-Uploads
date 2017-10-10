//Example 1.6<g>//
//draw the waveform of the signal x7(t)=u(t)-2*u(t-1)+u(t-2)//
clc ;
clear all;
t=-10:.001:10
for i=1:length(t)
if t(i)>=0 & t(i)<=1 then
x(i)=1;
end
if t(i)>=1 & t(i)<=2 then
x(i)=-1
end
end
//figure
plot2d(t,x);
xtitle('Required figure','t','x(t)')
