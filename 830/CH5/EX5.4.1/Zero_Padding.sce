//Graphical//
//Example 5.4.1
//Effect of Zero Padding
clear;
clc;
close;
L = 100;  // Length of the sequence
N = 200;  // N -point DFT
n = 0:L-1;
x = (0.95).^n;
//Padding zeros to find N = 200 point DFT
x_padd = [x, zeros(1,N-L)];
//Computing DFT 
X = dft(x,-1);
X_padd =  dft(x_padd,-1);
subplot(2,1,1)
plot2d(X)
xlabel('K')
ylabel('X(k)')
title('For L =100 and N =100')
subplot(2,1,2)
plot2d(X_padd)
xlabel('K')
ylabel('X(k) zero padded')
title('For L =100 and N =200')
