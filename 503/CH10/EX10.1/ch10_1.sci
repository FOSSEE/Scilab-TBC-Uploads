// to compute the ratio of E_mf/E_mb,V_f/V_b,T_f/T_b,gross total torque,T_f/total torque, T_b/total torque

clc;
R_lm=3;
X_lm=5;
R_2=1.5;
X_2=2;
s=1-.97;        //slip
a=complex(R_2/s,X_2);
b=complex(R_2/(2-s),X_2);
c=abs(a)/abs(b);
disp(c,'E_mf/E_mb');
a=(1/2)*complex((R_lm+R_2/s),(X_lm+X_2));
b=(1/2)*complex((R_lm+R_2/(2-s)),(X_lm+X_2));
c=abs(a)/abs(b);
disp(c,'V_f/V_b');
d=(2-s)/s;
disp(d,'T_f/T_b');
Z_tot=a+b;
V=220;
I_m=V/abs(Z_tot);
P=6;
f=50;
n_s=120*f/P;
w_s=2*%pi*n_s/60;
T_f=(I_m^2*R_2/(2*w_s))*(1/s);
T_b=(I_m^2*R_2/(2*w_s))*(1/(2-s));
T_tot=T_f-T_b;
disp(T_tot,'gross total torque(Nm)');
a=T_f/T_tot;
b=T_b/T_tot;
disp(a,'T_f/T_total');
disp(b,'T_b/T_total');
