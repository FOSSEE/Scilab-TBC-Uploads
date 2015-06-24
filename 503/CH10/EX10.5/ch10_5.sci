//to calculate starting torque and current,value of run capacitor,motor performance

clc;
R_lm=4.2;
X_lm=11.3;
R_la=5.16;
X_la=12.1;
X=250;
a=1.05;
R_2=7.48;
X_2=7.2;
Z_f=(complex(0,X)*complex(R_2,X_2))/(complex(0,X)+complex(R_2,X_2));
c=314*70*10^-6;
Z_la=complex(R_la,X_la-1/c);
Z_lm=complex(R_lm,X_lm);
Z_12=(1/2)*(Z_la/(a^2)-(Z_lm));
V=220;
V_mf=(V/2)*complex(1,-1/a);
V_mb=(V/2)*complex(1,1/a);
Z=Z_lm+Z_f+Z_12;
I_mf=(V_mf*Z+V_mb*Z_12)/(Z^2-Z_12^2);
I_mb=(V_mb*Z+V_mf*Z_12)/(Z^2-Z_12^2);
n_s=1500;
w_s=2*%pi*n_s/60;
T_s=(2/w_s)*real(Z_f)*(abs(I_mf)^2+abs(I_mb)^2);disp(T_s,'starting torque(Nm)');
I_m=I_mf+I_mb;
I_a=imult(I_mf-I_mb)/a;
I_L=I_m+I_a;
disp(abs(I_L),'I_L(start)(A)');

s=.04;
Z_f=(complex(0,X)*complex(R_2/s,X_2))/(complex(0,X)+complex(R_2/s,X_2));
Z_12=(-1/2)*complex(1,1/a)*(Z_lm+Z_f);
Z_1a=a^2*(2*Z_12+Z_lm);
Z=Z_1a-R_la-imult(X_la);
X_c=(-1)*imag(Z);
C=1/(314*X_c*10^-6);disp(C,'value of run capacitor(uF)');

Z_f=(complex(0,X)*complex(R_2/s,X_2))/(complex(0,X)+complex(R_2/s,X_2));
Z_b=(complex(0,X)*complex(R_2/(2-s),X_2))/(complex(0,X)+complex(R_2/(2-s),X_2));
Z_la=complex(R_la,X_la)-imult(10^6/(314*C));
Z_12=(1/2)*((Z_la/(a^2))-complex(R_lm,X_lm));
Z1=Z_lm+Z_f+Z_12;
Z2=Z_lm+Z_b+Z_12;
I_mf=(V_mf*Z2+V_mb*Z_12)/(Z1*Z2-(Z_12)^2);
I_mb=(V_mb*Z1+V_mf*Z_12)/(Z1*Z2-(Z_12)^2);
T=(2/157.1)*((abs(I_mf)^2*real(Z_f))-(abs(I_mb)^2*real(Z_b)));
I_m=I_mf+I_mb;
I_a=imult(I_mf-I_mb)/a;
I_L=I_m+I_a;
I_l=abs(I_L);    pf=1;
P_m=2*((abs(I_mf)^2*real(Z_f))-(abs(I_mb)^2*real(Z_b)))*(1-s);
P_L=45;
P_out=P_m-P_L;
P_in=I_l*V;
n=P_out/P_in;
disp(n,'efficiency');

