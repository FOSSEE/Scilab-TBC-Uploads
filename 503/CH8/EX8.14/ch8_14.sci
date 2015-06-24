//to calculate armature current, pf ,power angle, power , shaft torques,kVar

clc;
j=sqrt(-1);
P=8000;
Prot=500;
Pmg=P+Prot;
Pein=Pmg;
Ef=750/sqrt(3);
Vt=231;
Xs=16;
dl=asind(Xs*(Pein/3)/(Ef*Vt));
Eff=Ef*complex(cosd(-dl),sind(-dl));
Ia=(Vt-Eff)/(j*Xs);
disp(abs(Ia),'armature current(A)');
disp(cosd(atand(imag(Ia)/real(Ia))),'pf');
f=50;
p=4;
n_s=120*f/p;
w_s=2*%pi*n_s/60;
T=Pein/w_s;disp(T,'torque developed(Nm)');
T_s=P/w_s;disp(T_s,'shaft torques(Nm)');

Ef=600/sqrt(3);
Ia=(Vt-Ef)/(j*Xs);
rr=3*Vt*Ia/1000;
disp(rr,'kVar rating');
c=(abs(Ia)/Vt)/(2*%pi*f);
disp(-c,'capicator rating(F)');

Ef=300/sqrt(3);
Ia=(Vt-Ef)/(j*Xs);
rr=3*Vt*Ia/1000;
disp(-rr,'kVar rating');
L=(Vt/abs(rr))/(2*%pi*f);
disp(L,'inductor rating(H)');

Ia=j*2000/Vt;
Ef=Vt-j*Ia*Xs;
disp(abs(Ef)*sqrt(3),'excitation(V)');