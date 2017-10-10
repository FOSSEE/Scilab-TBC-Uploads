//Example 1.6<f>
//draw the waveform of the signal x6(t)=u(t+2)-u(t-2)
clc ;
clear all;
t=-10:.001:10;
for i=1:length(t)
if t(i)>=-2 & t(i)<=2 then
x(i)=1;
else
x(i)=0;
end
end
//figure
plot2d(t,x);
xtitle('Required figure','t','x(t)')

