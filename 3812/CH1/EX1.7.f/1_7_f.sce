//Example 1.7<f>
//draw the waveform of the signal x1(t)=r(3t+1)
clc;
clear all;
t=-10:.001:10;
for i=1:length(t)
if t(i)>=-1/3 then
x(i)=3*t(i)-1/3;
else
x(i)=0;
end
end
//figure
plot2d(x,t);
xtitle('Required figure','t','x(t)')
