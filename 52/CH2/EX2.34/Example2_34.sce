//Example 2.34
//To plot the impulse responce of the system analyically and using scilab
clear;
clc ;
close ;
n=0:1:50;
x=[1,zeros(1,50)];
b=[1 2];
a=[1 -3 -4];
yanaly=6/5*4.^n-1/5*(-1).^n;//Analytical Solution
ymat=filter(b,a,x);
subplot(3,1,1);
plot2d3(n,x);
xlabel('n');
ylabel('x(n)');
title('INPUT SEQUENCE (IMPULSE FUNCTION)');
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