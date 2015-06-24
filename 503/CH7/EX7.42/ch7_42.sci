//to determine shunt field current of the motor,demagnetising effect of armature rxn, determine series field turns/pole,speed of motor.

clc;
Voc=[180 200 220 240 250];
If=[1.18 1.4 1.8 2.4 2.84];
plot(If,Voc);
xlabel('If(A)');
ylabel('Voc(V)');
n_0=1350;    //at no load
Vt=230;
Ea=Vt;    //no voltage drop
If=1.08;    //from occ characteristic
disp(If,'If(A)');
n=1350;
Ia=56.5;
R=.15;
Ea=Vt-Ia*R;
Ifnet=1.8;    //from occ characteristic
Ifact=2.08;
Ifd=Ifact-Ifnet;
N_s=1200;    //shunt field turns
ATd=N_s*Ifd;    disp(ATd,'ATd');

Rf=.033;
Ea=Vt-Ia*(R+Rf);
n=1230;
nn=1350;
Eaa=Ea*nn/n;
Ifnet=2.41;ATnet=Ifnet*N_s;
If=1.08;
ATsh=If*N_s;
ATse=ATnet-ATsh+ATd;
Nse=ATse/Ia;    disp(floor(Nse),'series field turns');
Nse=25;
ATse=Nse*Ia;
ATnet=ATsh-ATd+ATse;
Ifnet=ATnet/N_s;
Rs=.025;
Eaa=226;    //from occ
Eact=Vt-Ia*(R+Rs);
n=nn*Eact/Eaa;    disp(n,'speed(rpm)');