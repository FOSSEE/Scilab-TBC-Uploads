clc

//Chapter 1
//Ex1.16, page no 47
A=1,delta=50e-3,T=500e-3
disp('Spectral Amplitude of the given function is given by ')// Displaying the expression for Spectral Amplitude
disp('Fn= A*delta/2 *[Sa(n*pi*delta/T)]')
disp('Therefore the fourier transform will be :')
mprintf('F[f(t)]=%f ∑Sa[n*pi/10]8delta(w-4*n*pi)',2*%pi*A*delta/T)// Displaying the Fourier transform


