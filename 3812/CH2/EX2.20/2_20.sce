//Example 2_20
//determine step response of the LTI system
clc;
n=-8:1/1000:8;
for i=1:length(n)
if n(i)>=0 then
x(i)=1;
h(i)=n(i);
else
x(i)=0
h(i)=0;
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
