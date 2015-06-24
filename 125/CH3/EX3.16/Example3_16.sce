//Caption: Circular correlation between two signals
//Example3.16
//page 134
clc;
x = [5,10;15,20];
h = [3,6;9,12];
h = h(:,$:-1:1);
h = h($:-1:1,:);
X = fft2d(x);
H = fft2d(h);
Y = X.*H;
y = ifft2d(Y);
disp(y,'Circular Correlation result y=')
//Result
// Circular Correlation result y=   
// 
//    300.    330.  
//    420.    450.
