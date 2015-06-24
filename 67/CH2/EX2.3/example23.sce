//Example 2.3
clc;
R=100;
L=100;
t=-8:1/100:8;
for i=1:length(t)
    if t(i)<0 then
        x(i)=0;
        h(i)=0;
    else
         h(i)=(R/L)*exp(-(R/L).*t(i));
         x(i)=1;
    end
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