//Continuous Time Fourier Series Coefficients of 
//a periodic signal x(t) = cos(Wot)
clear;
close;
clc;
t = 0:0.01:1;
T = 1;
Wo = 2*%pi/T;
xt = cos(Wo*t);
x1t=cos(Wo*-t);
for k =0:2
  C(k+1,:) = exp(-sqrt(-1)*Wo*t.*k);
  a(k+1) = xt*C(k+1,:)'/length(t);
  if(abs(a(k+1))<=0.01) 
    a(k+1)=0;
  end
end
a =a';
ak = [-a,a(2:$)]
disp("The fourier series coefficients are...")
disp(ak)
disp("magnitude of Fourier series coefficient")
disp(abs(ak))
n=-2:2;
subplot(2,1,1)
plot(n,abs(ak),'.');
xtitle("Magnitude Spectrum","k","|ak|");
if xt== x1t then
    disp("The Given signal is even. It has no phase spectrum");
else
for i=1:length(ak)
    if real(ak(i))== 0 then
        phase(i)=0;
    else
        phase(i)=atan(imag(ak(i))/real(ak(i)));
    end
end
disp("Phase of Fourier series coefficient in radians")
disp(phase)
subplot(2,1,2)
plot(n,phase,'.');
xtitle("Phase Spectrum","k","ak in radians");
end
