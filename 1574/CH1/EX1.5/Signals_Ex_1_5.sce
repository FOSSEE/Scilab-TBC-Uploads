clc
//Chapter 1 Signals
//Example 1.5, page no 19
//given
T=1,t0=0,wo=2*%pi
P=1
t=0:0.001:1
f=P*t
//The trigonometric Fourier series coeff for given function
a0=(1/T)*inttrap(t,f)

for n=1:10
    f1=(P*t).*cos(wo*n*t)
    a(n)=(2/T)*inttrap(t,f1)
    if a(n)<0.01 then
        a(n)=0
    end
end
for n=1:10
    f2=(P*t).*sin(2*%pi*(1/T)*n*t)
    b(n)=(2/T)*inttrap(t,f2)
end
// Displaying trigonometric Fourier series coeff
mprintf('The value of a0 is: %f\n',a0)
disp('The values of a(n):   (upto n=10)')
for n=1:10
    disp(a(n))
end
disp('The values of b(n):    (upto n=10)')
for n=1:10
    disp(b(n))
end
mprintf('The trigonometric Fourier series for given function\n can be written as:\n')
mprintf('f(t)=%f%fsin(2*pi*t)%fsin(4*pi*t)\n%fsin(6*pi*t)%fsin(8*pi*t)%fsin(10*pi*t)\n%fsin(12*pi*t)%fsin(14*pi*t).......',b(1),b(2),b(3),b(4),b(5),b(6),b(7),b(8))

