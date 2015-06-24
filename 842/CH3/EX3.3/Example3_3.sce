//clear//
//Example3.3:Continuous Time Fourier Series Coefficients of 
//a periodic signal x(t) = sin(Wot)
clear;
close;
clc;
t = 0:0.01:1;
T = 1;
Wo = 2*%pi/T;
xt = sin(Wo*t);
for k =0:5
  C(k+1,:) = exp(-sqrt(-1)*Wo*t.*k);
  a(k+1) = xt*C(k+1,:)'/length(t);
  if(abs(a(k+1))<=0.01) 
    a(k+1)=0;
  end
end
a =a';
ak = [-a,a(2:$)];
