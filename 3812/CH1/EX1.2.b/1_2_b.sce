//example 1_2<b>
//sketch the following signal x(3t+2)
clc;
clear all;
t=-1:0.0001:-1/3;
for i=1:length(t)
if t(i)<-2/3 then
x(i)=3+3*t(i);
else
x(i)=-1-3*t(i);
end
end
plot(t,x)
plot(t,x, 'red' );
xtitle('required figure','t','x(3*t+2)');
xgrid();
