//to determine ckt model parameters,parameters of thevenin equivalent, max torque and slip, stator current, pf and eff

clc;
j=sqrt(-1);
//NL test
V=3300;
f=50;
Inl=5;
Po=2500;
Zo=V/(sqrt(3)*Inl);
Ro=Po/(3*Inl^2);disp(Ro,'Ro(ohm)');
Xo=sqrt(Zo^2-Ro^2);disp(Xo,'Xo(ohm)');
//BR test
V_BR=400;
I_BR=27;
ff=15;
P_BR=15000;
Z_BR=V_BR/(sqrt(3)*I_BR);
R_BR=P_BR/(3*I_BR^2);
X_BR=sqrt(Z_BR^2-R_BR^2);
x1=X_BR/2;    //at 15 Hz
X1=x1*f/ff;    //at 50Hz
disp(X1,'X1(ohm)');
Xm=Xo-X1;disp(Xm,'Xm(ohm)');
R1=3.75;
R2=(R_BR-R1)*((Xm+X1)/Xm)^2;disp(R2,'R2(ohm)');

V_TH=(V/sqrt(3))*complex(cosd(0),sind(0))*complex(0,Xm)/complex(R1,X1+Xm);
disp(V_TH,'V_TH(V)');
Z_TH=complex(0,Xm)*complex(R1,X1)/complex(R1,X1+Xm);
disp(real(Z_TH),'R_TH(ohm)');
disp(imag(Z_TH),'X_TH(ohm)');

a=(sqrt(real(Z_TH)^2+(X1+imag(Z_TH))^2));
s_max_T=R2/a;
n_s=1000;
Z_tot=complex(real(Z_TH)+a,X1+imag(Z_TH));
I2=abs(V_TH)/abs(Z_tot);
T_max=3*(I2^2)*R2/(s_max_T*(2*%pi*n_s/60));disp(T_max,'T_max(Nm)');

Z_f=complex(0,Xm)*complex(81.25,X1)/complex(81.25,X1+Xm);
Z_in=Z_f+complex(R1,X1);
I1=V/(sqrt(3)*abs(Z_in));
pf=cosd(atand(imag(Z_in)/real(Z_in)));
s=.04;
Pmechg=(1-s)*3*I1^2*real(Z_f);
Prot=Po-Inl^2*R1;
Pip=sqrt(3)*V*I1*pf;
Pop=Pmechg-Prot;
eff=Pop/Pip;disp(eff,'efficiency');
Tint=Pmechg/((1-s)*2*%pi*n_s/60);disp(Tint,'internal torque developed(Nm)');