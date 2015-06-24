//max power supplied, power angle d, corresponding field current

clc;
j=sqrt(-1);
r=100*10^6;    //va
V=11000;
P=100*10^6;
Ef=1;    //pu
Vth=1;    //pu
Xs=1.3;    //pu
Xth=.24;    //pu
P_emax=Ef*Vth/(Xs+Xth);disp(P_emax,'max power delivered(pu)');

Pe=1;
Vt=1;
d=asind(Pe*Xth/(Vt*Vth));disp(d,'power angle');
Vt=exp(j*d);
Ia=(Vt-Vth)/(j*Xth);
Ef=Vth+j*(Xs+Xth)*Ia;
Voc=11000;
If=256;
Ff=19150;
Iff=If*Ff/Voc;
disp(Iff,'If(A)');

Pe=0:0.01:0.8;
Vt=1+(0.24/1.54)*(1.54*Pe-1);
plot(Pe,Vt);
xlabel('load');
ylabel('Vt(V)');

Pe=0:0.01:0.8;
dl=asind(0.24*Pe);
Ef=1+(1.54/.24)*(exp(j*dl)-1);
If=(256/11)*Ef;
plot(Pe,abs(If));
xlabel('load');
ylabel('excittion current');
