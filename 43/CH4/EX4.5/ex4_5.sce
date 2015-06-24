clc;
clear;
N1=8;
n=-N1:N1;
for i=1:length(n)
    x(i)=1;
end
X=fft(x,-1);