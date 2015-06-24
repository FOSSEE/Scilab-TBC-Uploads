//Example 2.2
clc;
t=-8:1/100:8;
for i=1:length(t)
    if t(i)<0 then
        x(i)=0;
        h(i)=0;
    else
         x(i)=exp(-3.*t(i));
         h(i)=1;
    end
end
t1=t+1;
y=convol(x,h);
figure
plot2d(t1,h);
title('Impulse responce');
figure
plot2d(t,x);
title('Input signal');
figure
t2=-16:1/100:16
plot2d(t2,y);
title('Output signal');