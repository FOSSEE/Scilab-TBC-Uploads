//Example 6.4

clc;clear;close;
a=0.5;
n=1:50;
x=ones(1,50);
h=a^n;

//Calculation of linear convolution
for i=1:50
    y(1,i)=sum(h(1:i));
end
disp('First Sequence is x(n)=u(n) ');
disp(a,'Second Sequence is h(n)=a^n*u(n) where a= ');
disp(y,'Output sequence is y(n): ');
subplot(3,1,1);
plot2d3(x);
title('First Seqence x[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,2);
plot2d3(h);
title('Second Seqence h[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,3);
plot2d3(y);
title('Convolution Seqence y[n]=x[n]*h[n] :');ylabel('Amplitude-->');xlabel('n-->')

