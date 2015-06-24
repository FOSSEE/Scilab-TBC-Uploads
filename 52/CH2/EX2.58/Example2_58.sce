//Example 2.58
//To plot the responce of the system analyically and using scilab
clear;
clc ;
close ;
n=0:1:20;
x=[1 zeros(1,20)];
b=[1 -0.5];
a=[1 -1 3/16];
yanaly=0.5*(0.75).^n+0.5*(0.25).^n;//Analytical Solution
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