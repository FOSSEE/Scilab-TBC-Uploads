//to calculate demagnetisising ampeare turns, em torque,starting torque and no of turns of the series field

clc;
P=10000;
Vt=240;
Ia=P/Vt;
If=.6;
Ra=.18;
Ri=0.025;
Ea=Vt-Ia*(Ra+Ri);
n=1218;
Eaa=Ea*Vt/Ea;
Iff=.548;    //from n-If characteristics
Ifd=If-Iff;
N_s=2000;    //shunt field turns
ATd=N_s*Ifd;    disp(ATd,'demagnetising ampere turns');
T=Ea*Ia/(2*%pi*n/60);disp(T,'torque(Nm)');
Rf=320;
If=Vt/Rf;
ATd=165;    //given
Ifd=ATd/N_s;
Ifnet=If-Ifd;
n=1150;    //from n-If characteristics
//Ea=Ka*phi*w;    Ka*phi=k
k=Vt/(2*%pi*n/60);
Iastart=75;
Tstart=Iastart*k;disp(Tstart,'starting torque(Nm)');
n_0=1250;
Ea=240;
If=.56;    //from n-If characteristics
n=1200;
Rse=.04;
R=Rse+Ra+Ri;
Eaa=Ea-Ia*R;
nn=n*Ea/Eaa;
Ifnet=.684;    //from n-If characteristics
Ifd=Ifnet-If;
Nse=N_s*Ifd/Ia;    disp(ceil(Nse),'no of turns of the series field');
