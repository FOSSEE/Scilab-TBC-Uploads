//Determine even and odd parts of the signals x(n)={4,-4,2,-2}
clc;
clear;
x1={0 0 0 4 -4 2 -2};
plot2d3(x1);//for discrete plot
x2={-2 2 -4 4 0 0 0};

Xo=(x1/2-x2/2);
Xe=(x1/2+x2/2);
disp(Xo,'Odd part');
disp(Xe,'Even part');

xset('window',1);
subplot(1,2,1);
plot2d3(Xo);
xlabel("time");
ylabel("odd part");

subplot(1,2,2);
plot2d3(Xe);
xlabel("time");
ylabel("even part");

xset('window',2);
X=(Xo+Xe);
plot2d3(X);