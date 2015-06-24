
//Example 8.19.1
//Use fourier transform to determine the response of the following signal
clc;
clear all;
n=-10:10
for i=1:length(n)
    if n(i)>=1 then
        x(i)=(3/4)^n(i);
        h(i)=(1/2)^n(i);
    else
        x(i)=0;
        h(i)=0;
    end
end
subplot(3,2,1)
plot(x,n);
xtitle('(a)x(n)');
subplot(3,2,2)
plot(h,n);
xtitle('(b)h(n)');
X=fft(x,-1);
H=fft(h,-1);
subplot(3,2,3)
plot(X,n);
xtitle('(c)X(n)');
subplot(3,2,4)
plot(H,n);
xtitle('(d)H(n)');
Y=H.*X;
subplot(3,2,5)
plot(Y,n);
xtitle('(e)Y(n)');
y=fft(Y,1);
disp(y,'The output response is:');
subplot(3,2,6)
plot(y,n);
xtitle('(f)y(n)');


clf()

//Example 8.19.2
//Use fourier transform to determine the response of the following signal
clc;
clear;
n=-10:10
for i=1:length(n)
    if n(i)>=1 then
        x(i)=(-1)^n(i);
        h(i)=(1/2)^n(i);
    else
        x(i)=0;
        h(i)=0;
    end
end
subplot(3,2,1)
plot(x,n);
xtitle('x(n)');
subplot(3,2,2)
plot(h,n);
xtitle('h(n)');
X=fft(x,-1);
H=fft(h,-1);
subplot(3,2,3)
plot(X,n);
xtitle('X(n)');
subplot(3,2,4)
plot(H,n);
xtitle('H(n)');
Y=H.*X;
subplot(3,2,5)
plot(Y,n);
xtitle('Y(n)');
y=fft(Y,1);
disp(y,'The output response is:');
subplot(3,2,6)
plot(y,n);
xtitle('y(n)');


