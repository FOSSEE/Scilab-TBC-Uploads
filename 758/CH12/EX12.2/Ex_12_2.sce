//Example 12.2
clc;clear;close;
N=8;n=0:N-1;
f1=0.6;f2=0.62;
x=cos(2*%pi*f1*n)+cos(2*%pi*f2*n);
L1=8;
for k=0:L1-1
    P1(k+1)=1/N*abs(x*(cos(%pi*n*k/L1)-%i*sin(%pi*n*k/L1))')^2
end
L2=16;
for k=0:L2-1
    P2(k+1)=1/N*abs(x*(cos(%pi*n*k/L2)-%i*sin(%pi*n*k/L2))')^2;
end
L3=32;
for k=0:L3-1
    P3(k+1)=1/N*abs(x*(cos(%pi*n*k/L3)-%i*sin(%pi*n*k/L3))')^2;
end
subplot(311);
plot2d3(0:L1-1,P1);title('L=8');
subplot(312);
plot2d3(0:L2-1,P2);title('L=16');
subplot(313);
plot2d3(0:L3-1,P3);title('L=32');