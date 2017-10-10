//Example 1.7<a>
//draw the waveform of the signal x1(t)=r(t-1)
clc;
clear all;
t=-10:.001:10;
for i=1:length(t)
if t(i)>=0 then
x(i)=t(i)+1;
else
x(i)=0;
end
end
plot2d(x,t);
xtitle('Required figure','t','x(t)')
