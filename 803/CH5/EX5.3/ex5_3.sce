clc
Ltot=123.03;
Fn=3.16;..//noise factor
Gt=10;..//transmitter gain
Pt=1500;..//transmitter peak power
To=296.7;
R=10^5;
k=1.38*10^-23;..//boltzmann constant
sigma=1.5;
Ae=8;
Bn=10^3;..//bandwidth
pi=3.14;
F=1;
w=1.67;
angle=(4*%pi/Gt)*180/%pi;
Beamwidth=sqrt(angle);..//elevation beamwidth
SNR=log10(Pt*Gt*Ae*sigma*F^4/(4*%pi)^2*k*To*Bn*Fn*R^4*Ltot);..//signal to noise ratio
T=2*%pi/w;..//time frame
disp("dB",SNR,"Signal received");
disp("s",T,"Time frame");
disp("degree",Beamwidth,"Elevation Beamwidth");

