//Example 3_13
//Continuous Time Fourier Series Coefficients of a periodic signal x(t)=2+4*sin((5*%pi)/3*t)+cos((2*%pi/3)*t)
clear;
clc;
t=0:0.01:1;
xt=2+4*sin((5*%pi)/3*t)+cos((2*%pi/3)*t);
x_t=2+4*sin((5*%pi)/3*-t)+cos((2*%pi/3)*-t);
x=2+(1/2)*exp(%i*(2*%pi/3)*t)+(1/2)*exp(-%i*(2*%pi/3)*t)+(4/(2*%i))*exp(%i*(5*%pi/3)*t)-(4/(2*%i))*exp(-%i*(5*%pi/3)*t);
a0=1;
a2=(1/2)
a_2=(1/2)
a3=(4/(2*%i));
a_3=-(4/(2*%i));
ak=[zeros(1,5) a_3 a_2 0 a2 a3 zeros(1,5)];
k=-7:7;
disp("The fourier series coefficients are...")
disp(ak)
disp("magnitude of Fourier series coefficent")
disp(abs(ak))
subplot(2,1,1)
plot(k,abs(ak),'.');
xtitle("Magnitude Spectrum","k","jakj");
if xt==x_t then
disp("The Given signal is even. It has no phase spectrum");
else
phase=[zeros(1,6) ,%pi/2,0,-%pi/2,zeros(1,6)];
disp("Phase of Fourier series coefficient in radians")
disp(phase)
subplot(2,1,2)
plot(k,phase,'.');
xtitle("Phase Spectrum","k","ak in radians");
end
