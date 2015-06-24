clc;
clear;
Wo=2*%pi/3;
n=-8:8;
for i=1:length(n)
    x(i)=cos(Wo*n(i));
end
X=fft(x,-1);