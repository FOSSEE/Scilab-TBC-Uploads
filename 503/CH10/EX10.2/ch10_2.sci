// to calculate parameters of the ckt model, line current, power factor, shaft torque and efficiency

clc;
V_0=215;
I_0=3.9;
P_0=185;
R_1=1.6;
V_sc=85;
I_sc=9.8;
P_sc=390;
X=(V_0/I_0)*2;        //magnetisation reactance
phi_sc=acosd(P_sc/(V_sc*I_sc));
I_e=V_sc/complex(0,X);
I_SC=I_sc*complex(cosd(phi_sc*(-1)),sind(phi_sc*(-1)));
I_m=I_SC-I_e;
Z=V_sc/I_m;
R_2=real(Z)-R_1;    //real(Z)=R=R1+R2
disp(R_2,'R_2(ohm)');
disp(imag(Z),'X_1+X_2(ohm)');

n=1500;    nn=1440;
s=(n-nn)/n;
a=1.55/s;
b=1.55/(2-s);
Z_ftot=(complex(0,X/2))*(complex(a+.8,imag(Z)/2))/((complex(0,X/2))+(complex(a+.8,imag(Z)/2)));
Z_btot=(complex(0,X/2))*(complex(b+.8,imag(Z)/2))/((complex(0,X/2))+(complex(b+.8,imag(Z)/2)));
Z_tot=Z_ftot+Z_btot;
I_m=V_0/Z_tot;
I_L=abs(I_m);disp(I_L,'line current(A)');
pf=cosd(atand(real(I_m)/imag(I_m)));    disp(pf,'pf');
P_in=V_0*I_L*pf;
I_mf=I_m*complex(0,X/2)/complex(39.55,59.12);
I_mb=I_m*complex(0,X/2)/complex(1.59,59.12);
T=(1/157.1)*(abs(I_mf)^2*38.75-abs(I_mb)^2*.79);
P_m=157.1*(1-s)*T;
P_L=185;
P_out=P_m-P_L;
eff=P_out/P_in;    disp(eff*100,'efficiency(%)');
T_shaft=P_out/157.1;    disp(T_shaft,'shaft torque(Nm)');
