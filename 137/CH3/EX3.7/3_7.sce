clc;
//page 84
// problem 3.7
t=-10:1:10;
y=sign(t);
g=fft(y);
disp(g,"fourier transform of signum funcion is");