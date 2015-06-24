//Example 6.3

clc;clear;close;
x=[1 1 1];
h=[1 1 1];

//Calculation of linear convolution
y=convol(x,h);
disp(x,'First Sequence is x(n): ');
disp(h,'Second Sequence is h(n): ');
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

