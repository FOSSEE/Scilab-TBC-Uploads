//Example 1.23
//Find the even and odd components of the signal x(t)=(e^-2t)*cos(t)
clc;
clear all;
t=-10:.1:10;
for j=1:length(t)
i=t(j);
x(j)=(exp(-2*i))*cos(i);
y(j)=(exp(2*i))*cos(i);
e(j)=(1/2)*(x(j)+y(j));
o(j)=(1/2)*(x(j)-y(j));
end
disp('In the plot even component is in red and odd component is in blue')
plot(t,e,'red')
plot(t,o,'blue')
