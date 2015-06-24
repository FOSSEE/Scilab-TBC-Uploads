//Continuous Time Fourier Series Coefficients of 
//a periodic signal x(t) = 1+sin(6t)+cos(4t)
clear;
close;
clc;
t = 0:0.01:1;
xt = 1+sin(6*t)+cos(4*t);
x_t = 1+sin(6*-t)+cos(4*-t);

//x(t) is expanded according to Euler's theorem
x=1+(1/2)*exp(%i*4*t)+(1/2)*exp(-%i*4*t)+(1/(2*%i))*exp(%i*6*t)-(1/(2*%i))*exp(-%i*6*t);
a0=1;
a2=(1/2)
a_2=(1/2)
a3=(1/(2*%i));
a_3=-(1/(2*%i));
ak=[zeros(1,5) a_3 a_2 0 a2 a3 zeros(1,5)];
k=-7:7;
disp("The fourier series coefficients are...")
disp(ak)
disp("magnitude of Fourier series coefficient")
disp(abs(ak))
subplot(2,1,1)
plot(k,abs(ak),'.');
xtitle("Magnitude Spectrum","k","|ak|");
if xt== x_t then
    disp("The Given signal is even. It has no phase spectrum");
else
    phase=[zeros(1,6) %pi/2 0 -%pi/2  zeros(1,6)];
    disp("Phase of Fourier series coefficient in radians")
    disp(phase)
    subplot(2,1,2)
    plot(k,phase,'.');
    xtitle("Phase Spectrum","k","ak in radians");
end
