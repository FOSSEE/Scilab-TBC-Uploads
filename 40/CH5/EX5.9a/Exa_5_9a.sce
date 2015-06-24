//DTFT and steady state response 
a=0.5,b=1;F=0.25;
n=0:(5/1000):5;
h=(a^n);
x=10*cos(0.5*%pi*n'+%pi/3);
H=h*exp(-%i*n'*F);
Yss=H*x;
[phase_Yss,m]=phasemag(Yss);
Yss=real(Yss);
subplot(2,1,1)
plot2d(n,Yss);
xlabel('Frequency in radians')
ylabel('abs(Yss)')
title('magnitude Response')
subplot(2,1,2)
plot2d(n,phase_Yss)
xlabel('Frequency in Radians');
ylabel('<(y)')
title('Phase Response')