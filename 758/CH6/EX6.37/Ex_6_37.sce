//Example 6.37

clc;clear;close;
x=[1 0 0 1];
h=[4 3 2 1];
ylength=length(x);
y=0;
//Calculation of circular correlation
for n=1:ylength,
    y(n)=0;
    for k=1:ylength,
        l=k-n+1;
        if l <= 0 then
            l=l+ylength;
        end
     y(n)=y(n)+(x(k)*h(l));
     end
     y(n)=y(n)/4;
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

