//example 5.5
clc; funcprot(0);
B=5;
L=10;
Ef=2.3e6;
Eo=1400;
k=25;
t=1.0;
mus=0.3;
Df=5;
qo=5000;
Ig=0.69;
Be=sqrt(4*B*L/%pi);
If=%pi/4+1/(4.6+10*(Ef/(Eo+2*Be/2*k))*(2*t/Be)^3);
Ie=1-1/(3.5*exp(1.22*mus-0.4)*(Be/Df+1.6));
Se=qo*Be*Ig*If*Ie/Eo*(1-mus^2)/144;
disp(Se*12,"settlement in inches");

