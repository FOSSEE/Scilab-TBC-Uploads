//Example 2_15
//Find the convolution of two sequences
clc;
n=-8:1/1000:8;
for i=1:length(n)
x(i)=exp(-n(i)^2);
if n(i)<0 then
h(i)=exp(n(i));
else
h(i)=exp(-n(i));
end
end
y=convol(x,h);
figure
plot2d3(n,h);
title('Impulse responce');
figure
plot2d3(n,x);
title('Input signal');
figure
n1=-16:1/1000:16
plot2d3(n1,y);
title('Output signal');
