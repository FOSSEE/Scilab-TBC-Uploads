//Example 3.32
//Find the input signal
clc;t=1:7;
y=[1 5 10 11 8 4 1];
h=[1 2 1 0 0 0 0];
Y=fft(y,-1);//-1 is taken to obtain the fourier transform of y.
H=fft(h,-1);

X=Y./H;
x=fft(X,1);//1 is taken to obtain the inverse fourier transform of X.
s=round(x);
disp(s,'The deconvolution of the above two sequences is :');
