clc;
//e.g 19.2
Ri=2.5*10**3;
Av=200;
Vs=5*10**-3;
beta=50;
ib=(Vs/Ri)
disp('microA',ib*10**6,"ib=");
ic=beta*ib;
disp('microA',ic*10**6,"ic=");
Ai=beta;
Ap=Ai*Av;
disp(Ap);
Gp=10*log10(Ap);
disp('dB',Gp*1,"Gp=");
