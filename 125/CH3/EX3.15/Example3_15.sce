//Caption: Circular correlation between two signals
//Example3.15
//page 131
clc;
x = [1,5;2,4];
h = [3,2;4,1];
h = h(:,$:-1:1);
h = h($:-1:1,:);
X = fft2d(x);
H = fft2d(h);
Y = X.*H;
y = ifft2d(Y);
disp(y,'Circular Correlation result y=')
//Result
//Circular Correlation result y=   
// 
//    37.    23.  
//    35.    25.