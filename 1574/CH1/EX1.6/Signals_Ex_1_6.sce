clc
//Chapter 1 Signals
//Example 1.6, page no 21
//given

t0=1,T=1,w0=2*3.14/T,P=1
t=0:0.1:1
f=P*t// function f(t)=P*t, 0<t<1
a=1
disp('The Exponential Fourier coeff(Fn) are:for n=-5 to 5')
for n=-5:5// Calculating the fourier coeff
    fr=f.*cos(%pi*n*t/T)
    Fr(a)=inttrap(t,fr)
    fi=f.*sin(%pi*n*t/T)
    Fi(a)=inttrap(t,fi)
    if Fr(a)<0.01 then Fr(a)=0
    end
    if Fi(a)<0.01 then
        Fi(a)=0
    end
    disp(Fr(a)-%i*Fi(a))
    a=a+1
end
mprintf('The given function in Expo Fourier series can be represented as \n')
mprintf('f(t)= %f+jP/2*pi* ∑1/n *exp(j2*pi*t)',P/2)
