//clear//
//Example 1.5:To express sum of two complex exponentials
//as a single sinusoid
clear;
clc;
close;
t =0:1/100:2*%pi;
x1 = exp(sqrt(-1)*2*t);
x2 = exp(sqrt(-1)*3*t);
x = x1+x2;
for i = 1:length(x)
  X(i) = sqrt((real(x(i)).^2)+(imag(x(i)).^2));
end
plot(t,X);
xtitle('Full wave rectified sinusoid','time t','Magnitude');
