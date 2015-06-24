//Caption: Scilab code for Differentiation of Gaussian function
//Fig7.23
//page388
clc;
close;
sigma=input('Enter the value of sigma:')
i=-10:.1:10;
j=-10:.1:10;
r=sqrt(i.*i+j.*j);
y=(1/(sigma^2))*(((r.*r)/sigma^2)-1).*exp(-r.*r/2*sigma^2);
plot(i,y)
legend(sprintf('The sigma value is %g',sigma))
xtitle('Differentiation of Gaussian function')