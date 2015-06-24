ZL=25; //input impedance
Z0=50; //characteristic impedance
epsilonr=4;
dp=0.001;
f0=500e6;
mu0=4*%pi*1e-7;
epsilon0=8.85e-12;
Zline=sqrt(Z0*ZL); //line impedance
w=dp/Zline*sqrt(mu0/epsilon0/epsilonr);
L=mu0*dp/w;  //inductance
C=epsilon0*epsilonr*w/dp;  //capacitance
vp=1/sqrt(L*C);   //phase velocity
Z0=sqrt(L/C);
d=1/(4*f0*sqrt(L*C));
N=100;
f=2e9*(0:N)/N;
betta=2*%pi*f/vp;
Z=Zline*((ZL+%i*Zline*tan(betta*d))./(Zline+%i*ZL*tan(betta*d)));
plot(f/1e9,real(Z));
title('Input impedance of the quarter-wave transformer');
xlabel('Frequency {\itf}, GHz');
ylabel('Input impedance |Z_{in}|, {\Omega}');