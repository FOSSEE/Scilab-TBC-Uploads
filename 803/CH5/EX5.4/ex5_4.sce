clc
Ts=1;
n=3;
Pd=0.9;..//detection probability
Gt=10^5;..//transmitter gain
k=1.38*10^-23;..//boltzmann constant
tau=10^-6;
To=305.8;
Ae=8;
Pfa=10^-6;..//probability of false alarm
Pt=10^5;..//transmitter power
F=1;..//noise factor
sigma=3.2;
Bn=1/tau;..//bandwidth
pi=3.14;
Fn=3.162;
e=2.72;
Ltot=67.608;
alpha=0.75*(1+0.667*e^(-n/3));
SNR=(alpha*log10(log(2)/Pfa)/n^(0.667)*(log10(1/Pd))^0.667);
R=(tau*Pt*Gt*Ae*sigma*F^4/(4*%pi)^2*k*To*Bn*Fn*SNR*Ltot)^0.25;
disp("m",R,"Maximum Range");
