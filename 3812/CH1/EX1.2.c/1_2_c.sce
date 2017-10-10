//example 1_2<c>
//sketch the following signal x(-2t-1)
clc;
clear all;
t=-1:0.0001:0;
for i=1:length(t)
if t(i)>=-1/2 then
x(i)=-2*t(i);
else
x(i)=(2*t(i))+2;
end
end
plot(t,x)
plot(t,x, 'red' );
xtitle('required figure','t','x(-2*t-1)');
xgrid();
