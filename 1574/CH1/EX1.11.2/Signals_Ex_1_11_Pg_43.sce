clc
//Chapter1
//Example1.11(2), page no 43
//Given
clear ;
close ;
// CTS Signal
A=2;// Amplitude
Dt=0.01;
T1=49.5; //Time in seconds
t=-T1/2: Dt:T1 /2;
for i=1:length(t)
xt(i)= A;
end
// Continuous time Fourier Transform
Wmax=2*%pi*1;// Analog Frequency = 1Hz
K =4;
k=0:(K/1000):K;
W=k*Wmax/K;
xt=xt';
XW =(xt*exp(-sqrt(-1)*t'*W)*Dt)-5;
XW_Mag =real(XW);
W =[-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag =[mtlb_fliplr( XW_Mag ), XW_Mag(2:1001)];
subplot(2 ,1 ,1);
a =gca();
a.data_bounds =[ -4 ,0;4 ,2];
a.y_location ="origin";
plot2d(t,xt);
xlabel('t in msec .');
title(' Contiuous Time Signal x(t) ')
subplot(2 ,1 ,2);
a=gca();
a.y_location ="origin";
plot2d(W,XW_Mag,5);
xlabel('Frequency in Radians/Seconds ');
title('Continuous time Fourier Transform X(jW) = an Impulse Function' )
mprintf('|F(w)|= 2*pi*A*delta(w), Hence the Fourier Transform of constant is an Impulse Function')

