//Frequency Response of a Rectangular Waveform
// x(t)= A, from -T1 to T1
clear;
clc;
close;
A =1;   
Dt = 0.005;
T1 = 4; 
t = -T1/2:Dt:T1/2;
for i = 1:length(t)
  xt(i) = A;
end
Wmax = 2*%pi*1;       
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
xt = xt';
XW = xt* exp(-sqrt(-1)*t'*W) * Dt;
XW_Mag = real(XW);
W = [-mtlb_fliplr(W), W(2:1001)]; 
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
subplot(2,1,1);
plot(t,xt);
xlabel('t in sec.');
title('Contiuous Time Signal x(t)')
subplot(2,1,2);
plot(W,XW_Mag);
xlabel('Frequency in Radians/Seconds');
title('Continuous-time Fourier Transform  X(jW)')
