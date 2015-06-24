//System Representation in various forms
a=0.6;b=1;
n=0:50;
h=b*(a^n);
//Discrete-Time Fourier transform
K=500;
k=0:1:K;
w=%pi*k/K;
H=h*exp(-%i*n'*w);
//caluculation of phase and magnitude of h(z)
[phase_H,m]=phasemag(H);
H=abs(H);
subplot(2,1,1);
plot2d(w/%pi,H);
xlabel('Frequency in radians')
ylabel('abs(H)')
title('magnitude Response')
subplot(2,1,2)
plot2d(w/%pi,phase_H)
xlabel('Frequency in Radians');
ylabel('<(H)')
title('Phase Response')