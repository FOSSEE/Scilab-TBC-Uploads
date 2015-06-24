//Example 2.7
clc;
n=-8:1:8;
for i=1:length(n)
         x(i)=exp(-n(i)^2);
         h(i)=3.*n(i)^2;
end
y=convol(x,h);
figure
plot2d3(n,h);
title('Impulse responce');
figure
plot2d3(n,x);
title('Input signal');
figure
n1=-16:1:16
plot2d3(n1,y);
title('Output signal');