
//Example 8.14
//Find the convolution of the signals given below using fourier transform
clc;
clear all;
n=-10:10;
for i=1:length(n)
    if n(i)>=0 then
        x1(i)=(1/2)^n(i);
        x2(i)=(1/3)^n(i);
    else
        x1(i)=0;
        x2(i)=0;
    end
end
subplot(3,2,1)
plot(x1,n);
xtitle('(a) x1(n)');
subplot(3,2,2)
plot(x2,n);
xtitle('(b) x2(n)');
X1=fft(x1,-1);
X2=fft(x2,-1);
subplot(3,2,3)
plot(X1,n);
xtitle('(c) X1(n)');
subplot(3,2,4)
plot(X2,n);
xtitle('(d) X2(n)');
X3=X2.*X1;
subplot(3,2,5)
plot(X3,n);
xtitle('(e) X3(n)');
x3=fft(X3,1);
disp(x3,'The result of convolution is:');
subplot(3,2,6)
plot(x3,n);
xtitle('(f) x3(n)');
