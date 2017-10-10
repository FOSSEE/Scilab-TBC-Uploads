//Example 1.7<c>
//draw the waveform of the signal x1(t)=r(-t)
clc;
clear all;
t=-10:0.001:10;
for i=1:length(t)
if t(i)>=0  then
x(i)=-t(i);
else
x(i)=0;
end
end
//figure
plot2d(x,t);
xtitle('Required figure','t','x(t)')
