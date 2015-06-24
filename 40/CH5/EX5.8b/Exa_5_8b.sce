a=0.5;b=1;
n=0:50;
h=4*(a^n);
//Discrete-Time Fourier transform
K=500;
k=0:1:K;
w=%pi*k/K;
H=h*exp(-%i*n'*w);
//x[n] is given as (a)^n*u[n]
x=4*[ones(1:51)];
xw=x*exp(%i*n'*w);
for i=1:501
    y(i)=H(i)*xw(i);
end
[phase_y,m]=phasemag(y);
y=real(y);
subplot(2,1,1);
plot2d(w/%pi,y);
xlabel('Frequency in radians')
ylabel('abs(y)')
title('magnitude Response')
subplot(2,1,2)
plot2d(w/%pi,phase_y)
xlabel('Frequency in Radians');
ylabel('<(y)')
title('Phase Response')