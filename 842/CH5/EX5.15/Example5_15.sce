//clear//
//Example5.15:Multiplication Property of DTFT
clear;
clc;
close;
n = 1:100;
x2 = [3/4,sin(0.75*%pi*n)./(%pi*n)];
x1 = [1/2,sin(0.5*%pi*n)./(%pi*n)];
x = x1.*x2;
Wmax = %pi;       
K = 1;
k = 0:(K/1000):K;
W = k*Wmax/K;
 n = 0:100;
XW1 = x1* exp(-sqrt(-1)*n'*W);
XW2 = x2* exp(-sqrt(-1)*n'*W);
XW = x* exp(-sqrt(-1)*n'*W);
XW1_Mag = real(XW1);
XW2_Mag = real(XW2);
XW_Mag = real(XW);
W = [-mtlb_fliplr(W), W(2:$)]; // Omega from -Wmax to Wmax
XW1_Mag = [mtlb_fliplr(XW1_Mag), XW1_Mag(2:$)];
XW2_Mag = [mtlb_fliplr(XW2_Mag), XW2_Mag(2:$)];
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:$)];
figure
subplot(3,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot(W,XW1_Mag);
title('DTFT X1(exp(jW))');
subplot(3,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot(W,XW2_Mag);
title('DTFT X2(exp(jW))');
subplot(3,1,3)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot(W,XW_Mag);
title('Multiplication Property of DTFT');
