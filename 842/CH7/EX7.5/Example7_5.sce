//clear//
//Example7.5:Multirate Signal Processing:Sampling Rate Conversion
//(1)Downsampling by 4
//(2)Upsampling by 2
//(3)Upsampling by 2 and followed by downsampling by 9
clear;
close;
clc;
Wm = 2*%pi/9;//Maximum frequency of signal
Ws = 2*Wm;   //Sampling frequency
N = floor(2*%pi/Ws);//period of discrete signal
//Original discrete time signal generation and Magnitude response
n = 0:0.01:N;
x = sin(Wm*n);
Wmax = 2*%pi/9;
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
XW = x* exp(-sqrt(-1)*n'*W);
XW_Mag = real(XW);
XW_Mag = XW_Mag/max(XW_Mag);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
//(1)downsampling by 4 and corresponding magnitude response
n1 = 0:0.01:N/4;
y = x(1:4:length(x));
k1 = 0:(K/2000):K;
W1 = k1*4*Wmax/K;
XW4 = y* exp(-sqrt(-1)*n1'*W1);
XW4_Mag = real(XW4);
XW4_Mag = XW4_Mag/max(XW4_Mag);
W1 = [-mtlb_fliplr(W1), W1(2:$)]; // Omega from -Wmax to Wmax
XW4_Mag = [mtlb_fliplr(XW4_Mag), XW4_Mag(2:$)];
//(2)Upsampling by 2 and corresponding magnitude response
n2 = 0:0.01:2*N;
z = zeros(1,length(n2));
z([1:2:length(z)]) = x;
k2 = 0:(K/500):K;
W2 = k2*Wmax/(2*K);
XW2 = z* exp(-sqrt(-1)*n2'*W2);
XW2_Mag = real(XW2);
XW2_Mag = XW2_Mag/max(XW2_Mag);
W2 = [-mtlb_fliplr(W2), W2(2:$)]; // Omega from -Wmax to Wmax
XW2_Mag = [mtlb_fliplr(XW2_Mag), XW2_Mag(2:$)];
//(3)Upsampling by 2 and Downsampling by 9 corresponding magnitude response
n3 = 0:0.01:2*N/9;
g = z([1:9:length(z)]);
k3 = 0:K/(9*500):K;
W3 = k3*9*Wmax/(2*K);
XW3 = g* exp(-sqrt(-1)*n3'*W3);
XW3_Mag = real(XW3);
XW3_Mag = XW3_Mag/max(XW3_Mag);
W3 = [-mtlb_fliplr(W3), W3(2:$)]; // Omega from -Wmax to Wmax
XW3_Mag = [mtlb_fliplr(XW3_Mag), XW3_Mag(2:$)];
//
figure
subplot(2,2,1)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds =[-%pi,0;%pi,1.5];
plot2d(W,XW_Mag,5);
title('Spectrum of Discrete Signal X(exp(jW))')
subplot(2,2,2)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds =[-%pi,0;%pi,1.5];
plot2d(W1,XW4_Mag,5);
title('Spectrum of downsampled signal by 4 X(exp(jW/4))')
subplot(2,2,3)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds =[-%pi,0;%pi,1.5];
plot2d(W2,XW2_Mag,5);
title('Spectrum of Upsampled signal by 2  X(exp(2jW))')
subplot(2,2,4)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds =[-%pi,0;%pi,1.5];
plot2d(W3,XW3_Mag,5);
title('Spectrum of Upsampled by 2 and Downsampled by 9  X(exp(2jW/9))')
