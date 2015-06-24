//Example 2.1
clc;
t=-8:1/100:8;
for i=1:length(t)
   x(i)=exp(-t(i)^2);
   h(i)=3*t(i)^2;
end
y=convol(x,h);
figure
plot2d(t,h);
title('Impulse responce');
figure
plot2d(t,x);
title('Input signal');
figure
t2=-16:1/100:16
plot2d(t2,y);
title('Output signal');