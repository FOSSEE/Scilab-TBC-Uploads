




//Continuous Time Fourier Series Coefficients of 
//a periodic signal x(t) = sin(2*Wot)
clear;
close;
clc;
t = 0:0.01:1;
T = 1;
Wo = 2*%pi/T;
xt = sin(2*Wo*t);
for k =0:4
  C(k+1,:) = exp(-sqrt(-1)*Wo*t.*k);
  a(k+1) = xt*C(k+1,:)'/length(t);
  if(abs(a(k+1))<=0.01) 
    a(k+1)=0;
  end
end
a =a';
ak = [-a,a(2:$)]
for i=1:length(ak)
    if real(ak(i))== 0 then
        phase(i)=0;
    else
         if i<length(ak)/2 then
            phase(i)= atan(imag(ak(i))/real(ak(i))); 
         else
            phase(i)= -atan(imag(ak(i))/real(ak(i)));
         end 
    end
end
disp("The fourier series coefficients are...")
disp(ak)
disp("magnitude of Fourier series coefficient")
disp(abs(ak))
disp("Phase of Fourier series coefficient in radians")
disp(phase)
n=-4:4;
subplot(2,1,1)
plot(n,abs(ak),'.');
xtitle("|ak|","k","|ak|");
subplot(2,1,2)
for i=1:length(n)
    if n(i)== -2 then
    phase(i)=3.14/2;
    elseif n(i)== 2 then
    phase(i)= -3.14/2;
    else
    phase(i)=0;
end
end
plot(n,phase,'.');
xtitle("/_ak","k","/_ak");
