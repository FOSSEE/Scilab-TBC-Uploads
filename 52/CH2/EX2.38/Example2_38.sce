//Example 2.38
//To plot the responce of the system analyically and using scilab
clear;
clc ;
close ;
n=0:1:20;
x=n;
b=[0 1 1];
a=[1 -0.7 0.12];
yanaly=38.89*(0.4).^n-26.53*(0.3).^n-12.36+4.76*n;//Analytical Solution
ymat=filter(b,a,x);
subplot(3,1,1);
plot2d3(n,x);
xlabel('n');
ylabel('x(n)');
title('INPUT SEQUENCE (RAMP FUNCTION)');
subplot(3,1,2);
plot2d3(n,yanaly);
xlabel('n');
ylabel('y(n)');
title('OUTPUT SEQUENCE yanaly');
subplot(3,1,3);
plot2d3(n,ymat);
xlabel('n');
ylabel('y(n)');
title('OUTPUT SEQUENCE ymat');
//As the Analtical Plot matches the Scilab Plot hence it is the Responce of the system