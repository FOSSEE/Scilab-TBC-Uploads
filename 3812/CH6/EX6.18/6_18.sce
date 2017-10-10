//Example6.18:
//Find and sketch the  Fourier Transform 
clc;
N = 5;
N1 = -3*N:3*N;
xn = [zeros(1,N-1),1];
x = [1 xn xn xn xn xn xn];
ak = 1/N;
XW = 2*%pi*ak*ones(1,2*N);
Wo = 2*%pi/N;
n  = -N:N-1;
W = Wo*n;
figure
subplot(2,1,1)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',N1,x,2);
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
xlabel('n');
title('Periodic Impulse Train')
subplot(2,1,2)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',W,XW,2);
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
xlabel('W');
title('DTFT of Periodic Impulse Train')
disp(Wo)
