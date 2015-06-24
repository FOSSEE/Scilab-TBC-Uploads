//Example 6.5
clc;clear;close;
x=[1 2 3];xmin=0;nx=xmin:length(x)+xmin-1;
h=[1 2 -2 -1];hmin=-1;nh=length(h)+hmin-1;

//Calculation of linear convolution
y=convol(x,h);
ymin=xmin+hmin;ny=ymin:length(y)+ymin-1;

disp(x,'First Sequence is x(n): ');
disp(h,'Second Sequence is h(n): ');
disp(y,'Output sequence is y(n): ');
subplot(3,1,1);
plot2d3(nx,x);
title('First Seqence x[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,2);
plot2d3(nh,h);
title('Second Seqence h[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,3);
plot2d3(ny,y);
title('Convolution Seqence y[n]=x[n]*h[n] :');ylabel('Amplitude-->');xlabel('n-->')

