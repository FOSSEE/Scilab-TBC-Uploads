//Example 6.2

clc;clear;close;
x=[1 2];
h=[1 2 4];

//Calculation of linear convolution
y=convol(x,h);
disp(x,'Input Sequence is x(n): ');
disp(h,'Impulse respnose of FIR filter h(n): ');
disp(y,'Output sequence is y(n): ');
subplot(3,1,1);
plot2d3(x);
title('Input Seqence x[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,2);
plot2d3(h);
title('Impulse Response h[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,3);
plot2d3(y);
title('Output Seqence y[n]=x[n]*h[n] :');ylabel('Amplitude-->');xlabel('n-->')

