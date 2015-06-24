clc;
a=0.5;
for n=1:10
    x(n)=a^(n-1);
end
X=fft(x,-1);