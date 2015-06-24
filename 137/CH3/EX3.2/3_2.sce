clc;
//page no 81
//prob 3.2
//given signal is x(t) = rect(t/T)
//rect(t/T) = 1 for |t| < T/2  and   
//          = 0 for |t| > T/2
// therefore we have to find out fourier transform of x(t)= 1 for |t| < T/2 thus,
x=1;
T= 200; // consider 
t= -T/2 : 1 : T/2;//range for fourer transform
y=fft(x);
disp(y,'fourier transform of x(t)=');