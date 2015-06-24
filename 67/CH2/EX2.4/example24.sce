//Example 2.4
clc;
t=-8:1/100:8;
for i=1:length(t)
         x(i)=3*cos(2.*t(i));
         h(i)=exp(-abs(t(i)));
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