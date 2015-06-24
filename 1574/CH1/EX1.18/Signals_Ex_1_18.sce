clear ;
clc ;
close ;
// CTS Signal
A =1; // Amplitude
Dt = 0.005;
T1 = 2; //Time in seconds
t = 0: Dt:T1 /2;
for i = 1: length (t)
xt(i) = A;
end
// Continuous time Fourier Transform
Wmax= 2*%pi*1; // Analog Frequency = 1Hz
K =4;
k=0:(K/1000):K;
W =k*Wmax/K;
xt=xt';
XW =xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag =real(XW);
W =[-mtlb_fliplr(W), W(2:1001)]; // Omega from  Wmax to Wmax
XW_Mag =[mtlb_fliplr( XW_Mag ), XW_Mag(2:1001)];
// displaying the given function
subplot(2 ,1 ,1);
a =gca();
a.data_bounds =[ -4 ,0;4 ,2];
a.y_location ="origin";
plot(t,xt);
xlabel('t in msec .');
title(' Contiuous Time Signal x(t)  {Gate Function} ')
// displaying the fourier Transform of the given function
subplot(2 ,1 ,2);
a=gca();
a.y_location ="origin";
plot(W, XW_Mag);
xlabel('Frequency in Radians / Seconds ');
title('Continuous time Fourier Transform X(jW)' )
mprintf('Hence Fourier transform of given Gate function is:\n A*delta*Sa[w*delta/2]/ exp(-j*w*delta/2)')
