//Example 6.36

clc;clear;close;
x=[1 0 0 1];
h=[4 3 2 1];
ylength=length(x)+length(h)-1;
xlength=length(x);
x=[zeros(1,length(h)-1) x zeros(1,length(h)-1)];
y=0;
//Calculation of cross correlation
for n=1:ylength;
    y(n)=x*[zeros(1,n-1) h zeros(1,ylength-n)]';           //this instruction performs cross correlation of x & h
end                                 

disp(x,'First Sequence is x(n): ');
disp(h,'Second Sequence is h(n): ');
disp(y,'Correlation Sequence y[n] is');
figure;
subplot(3,1,1);
plot2d3(x);
title('First Seqence x[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,2);
plot2d3(h);
title('Second Seqence h[n]:');ylabel('Amplitude-->');xlabel('n-->')
subplot(3,1,3);
plot2d3(y);
title('Correlation Seqence y[n]:');ylabel('Amplitude-->');xlabel('n-->')

