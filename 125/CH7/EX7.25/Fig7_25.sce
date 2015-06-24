//Caption: Scilab code for Differentiation of Gaussian Filter function
//Fig7.25
//page389
clc;
close;
sigma1 = input('Enter the value of sigma1:')
sigma2 = input('Enter the value of sigma2:')
i=-10:.1:10;
j=-10:.1:10;
r=sqrt(i.*i+j.*j);
y1 = (1/(sigma1^2))*(((r.*r)/sigma1^2)-1).*exp(-r.*r/2*sigma1^2);
y2 = (1/(sigma2^2))*(((r.*r)/sigma2^2)-1).*exp(-r.*r/2*sigma2^2);
y = y1-y2;
plot(i,y)
xtitle('Shape of DOG Filter')
//Result
//Enter the value of sigma1: 4
//Enter the value of sigma2: 1
// 