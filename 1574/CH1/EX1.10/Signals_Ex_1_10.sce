clc
//Chapter1: Signals
//Example1.10, page no 38
//Given
//a
A=1,delta=1e-3,T=10e-3
w0=2*%pi/T,n=0
for i=0:10
    if n==0 then
        Sa=1 
    else 
        Sa=sin(n*%pi*delta/T)/(n*%pi*delta/T)
    end
    
end

F=(A*delta/T)*Sa//spectral Amplitude
mprintf('a)\nAt wo,n=0: The spectral amplitude is: F0= %f V\n',F)
//b
// displaying the fourier Transform of the given function
mprintf('b)\nThe Fourier tranform of f(t-delta/2) is given as: '), 
mprintf('\nf(t)=A*delta/T*∑Sa(n*delta*pi/T)*exp(jwo(t-delta/2))')
