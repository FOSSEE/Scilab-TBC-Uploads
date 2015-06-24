//Determine the Response of LTI system if input x(n)={-1 1 2 1 -1} and impulse Response h(n)={-1 1 -1 1}
clc;
clear;
x=[-1 1 2 1 -1];
disp(x,'Input signal=>    x(n)=');
h=[-1 1 -1 1];
disp(h,'Impulse Response=>    h(n)=');
k=length(x)+length(h)-1;
for n=length(x)+1:1:k
    x(n)=0;//appending 0s
end
for n=length(h)+1:1:k
    h(n)=0;//appending 0s
end
n=0:1:k;

X=fft(x);
disp(X,'4 point FFT of x(n)=>');

H=fft(h);
disp(X,'4 point FFT of h(n)=>');

Y=X.*H;
y=ifft(Y);
disp(y,'Response to input,x(n)=>    y(n)=');