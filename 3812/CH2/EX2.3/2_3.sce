//Example 2_3
//Find the convolution of two continuous time signal
clc;
t=-8:1/100:8;
for i=1:length (t)
x(i)=exp(-abs(t(i)));
if t(i)>=1 then
h(i)=exp(-2*t(i));
else
h(i)=0;
end
end
t1=t;
y= convol (x,h)
figure
plot2d(t1,h);
title('Impul seresponce');
figure
plot2d(t,x);
title('Input signal');
figure
t2=-16:1/100:16
plot2d(t2,y);
title('Output signal');
