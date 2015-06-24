clc
//Chapter 1
//Ex1.12, page no 43
//Given
mprintf('The given function is:\n f(t)=exp(j*wo*t) (for -inf<t<inf)\n')// Displaying the given function
disp('exp(j*wo*t)= cos(wo*t)+j*sin(wo*t)')
disp('F[exp(j*wo*t)]=F[cos(wo*t)]+F[j*sin(wo*t)]')
disp('f[exp(j*wo*t)]=pi*[d(w-wo)+d(w+wo)-d(w+wo)+d(w-wo)]')
disp('the fourier transform can be given as:'),disp(' F[exp(j*wo*t)]= 2*pi*d(w-wo)')// displaying the fourier Transform of the given function
