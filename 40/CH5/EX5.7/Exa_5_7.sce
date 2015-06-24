a=0.5;b=1;
n=0:50;
h=b*(a^n);
//Discrete-Time Fourier transform
K=500;
k=-250:1:250;
w=%pi*k/K;
H=h*exp(-%i*n'*w);
//caluculation of phase and magnitude of h(z)
[phase_H,m]=phasemag(H);
H=abs(H);
a=gca();
subplot(2,1,1);
a.y_location="origin";
plot2d(w/%pi,H);
xlabel('Frequency in radians')
ylabel('abs(H)')
title('magnitude Response')
subplot(2,1,2);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(w/(2*%pi),phase_H)
xlabel('Frequency in Radians');
ylabel('<(H)')
title('Phase Response'))