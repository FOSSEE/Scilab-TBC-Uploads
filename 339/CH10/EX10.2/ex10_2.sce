stacksize("max");
//define crystal parameters
Lq=0.1;
Rq=25;
Cq=0.3*10^-12;
C0=1*10^-12;

//find series resonance frequency
ws0=1/sqrt(Lq*Cq);
disp(ws0);
ws=ws0*(1+Rq^2/2*C0/Lq);
fs=ws/2/%pi 

//find parallel resonance frequency
wp0=sqrt((Cq+C0)/(Lq*Cq*C0));
wp=wp0*(1-Rq^2/2*C0/Lq);
fp=wp/2/%pi

//define frequency range for this plot
f=(0.9:0.00001:1.1)*1e6;
w=2*%pi*f;

//find abmittance of the resonator
Y=%i.*w*C0+1.0./(Rq+%i*(w*Lq-1.0./(w*Cq)));

plot(f/1e6,abs(imag(Y)));
mtlb_axis([0.9 1.1 1e-10 1e-1]);
title('Admittance of the quartz crystal resonator');
xlabel('Frequency {\itf}, MHz');
ylabel('Susceptance |B|, \Omega');