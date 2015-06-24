//to calculate starting torque and current,full load current,pf, torque , internal and overall eff,slip and max torque

clc;
R1=.3;
R2=.25;
X1=.6;
X2=.6;
Xm=35;
Prot=1500;
V=231;
Z_TH=complex(0,Xm)*complex(R1,X1)/complex(R1,X1+Xm);
V_TH=(V*complex(0,Xm))/complex(R1,X1+Xm);
n_s=1500;
w_s=2*%pi*n_s/60;

s=1;
Z_f=complex(0,Xm)*complex(R2,X2)/complex(R2,X2+Xm);
R_f=real(Z_f);
Z_in=Z_f+complex(R1,X1);
I1=V/abs(Z_in);disp(I1,'starting current(A)');
Tstart=3*I1^2*R_f/w_s;disp(Tstart,'starting torque(Nm)');

n=1450;
s=1-n/n_s;
a=R2/s;
Z_f=complex(0,Xm)*complex(a,X2)/complex(a,X2+Xm);
R_f=real(Z_f);
Z_in=Z_f+complex(R1,X1);
I1=V/abs(Z_in);disp(I1,'full load current(A)');
pf=cosd(atand(imag(Z_in)/real(Z_in)));disp(pf,'pf');
P_G=3*I1^2*R_f;
Popg=P_G*(1-s);
Pop=Popg-Prot;
Tnet=Pop/((1-s)*w_s);disp(Tnet,'net torque(Nm)');
Vt=400;
Pip=sqrt(3)*Vt*I1*pf;
eff=Pop/Pip;disp(eff*100,'efficiency(%)');
int_eff=Popg/Pip;disp(int_eff*100,'internal eff(%)');

s_max_T=1/(sqrt(real(Z_TH)^2+(imag(Z_TH)+X1)^2)/R2);disp(s_max_T,'max slip');
Z_tot=Z_TH+complex(R2/s_max_T,X2);
I2=abs(V_TH)/abs(Z_tot);
T_max=3*I2^2*(R2/s_max_T)/w_s;
disp(T_max,'max torque(Nm)');

