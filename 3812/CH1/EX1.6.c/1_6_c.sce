//draw the waveform of the signal x3(t)=u(-t)
clc ;
clear all;
t=-10:.001:10;
for i=1:length(t)
if t(i)<=0 then
x(i)=1;
else
x(i)=0;
end
end
plot2d(t,x);
xtitle('Required figure','t','x(t)')
