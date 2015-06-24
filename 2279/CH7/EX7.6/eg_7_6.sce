//DTFS of a periodic sequence
clc
clear
close
n=-4:3;
x=[0 1 2 3 0 1 2 3];
N=4;
k=0:3;;
wo=2*%pi/N;
a0=1.5;
a1=-0.5+0.5*%i;
a2=-0.5;
a3=-0.5-0.5*%i;
a=[a0,a1,a2,a3]
for i=1:length(a)
    phase(i)=atan(imag(a(i))/real(a(i)));    
end
subplot(2,1,1)
plot(k,abs(a),'.');
xtitle("magnitude spectrum","k","ak");
subplot(2,1,2)
plot(k,phase,'.');
xtitle("phase spectrum","k","ak");
