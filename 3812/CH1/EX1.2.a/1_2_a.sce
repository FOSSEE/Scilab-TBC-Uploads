//example 1_2<a>
//sketch the following signal x(3t)
clc;
clear all;
t=-1/3:0.0001:1/3;
for i=1:length(t)
if t(i)<0 then
x(i)=1+3*t(i);
else
x(i)=1-3*t(i);
end
end
plot2d(t,x)
plot (t,x, 'red' );
xtitle('required figure','t','x(3*t)');
xgrid();
