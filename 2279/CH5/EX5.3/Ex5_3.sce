//Continuous Time Fourier Series Coefficients of 
//a periodic signal x(t) = 5*cos((%pi/2*t)+(%pi/6))
clear;
close;
clc;
t = 0:0.01:1;
T = 1;
Wo = 2*%pi/T;
xt = cos((%pi/2*t)+(%pi/6))
x1t=cos((%pi/2*-t)+(%pi/6))

//x(t) is expanded according to Euler's theorem
x=5/2*(exp(%i*(%pi/2*t+%pi/6))+exp(-%i*(%pi/2*t+%pi/6)));
a1=5/2*exp(%i*%pi/6);
a_1=5/2*exp(-%i*%pi/6);
ak=[zeros(1,5) a_1 0 a1 zeros(1,5)];
k=-6:6;
disp("The fourier series coefficients are...")
disp(ak)
disp("magnitude of Fourier series coefficient")
disp(abs(ak))
subplot(2,1,1)
plot(k,abs(ak),'.');
xtitle("Magnitude Spectrum","k","|ak|");
if xt== x1t then
    disp("The Given signal is even. It has no phase spectrum");
else
    phase=[zeros(1,5) atan(imag(a_1)/real(a_1)) 0 atan(imag(a1)/real(a1))  zeros(1,5)];
    disp("Phase of Fourier series coefficient in radians")
    disp(phase)
    subplot(2,1,2)
    plot(k,phase,'.');
    xtitle("Phase Spectrum","k","ak in radians");
end
