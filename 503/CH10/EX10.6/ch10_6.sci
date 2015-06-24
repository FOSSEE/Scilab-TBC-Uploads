//to calculate starting torque and atarting current,motor performance

clc;
V_a=110*complex(cosd(90),sind(90));
V_m=220*complex(cosd(0),sind(0));
R_1=3;
R_2=2.6;
X_1=2.7;
X_2=2.7;
X=110;
V_f=(1/2)*(V_m-imult(V_a));
V_b=(1/2)*(V_m+imult(V_a));
Z_f=(complex(0,X)*complex(R_2,X_2))/(complex(0,X)+complex(R_2,X_2));
Z_b=Z_f;
Z_ftot=complex(R_1,X_1)+Z_f;
Z_btot=complex(R_1,X_1)+Z_b;
I_f=V_f/Z_ftot;
I_b=V_b/Z_btot;
T_s=(2/157)*real(Z_f)*(abs(I_f)^2-abs(I_b)^2);disp(T_s,'starting torque(Nm)');
I_m=I_f+I_b;
I_a=imult(I_f-I_b);disp(abs(I_a),'starting current(A)');
s=0.04;

Z_f=(complex(0,X)*complex(R_2/s,X_2))/(complex(0,X)+complex(R_2/s,X_2));
Z_b=(complex(0,X)*complex(R_2/(2-s),X_2))/(complex(0,X)+complex(R_2/(2-s),X_2));
Z_ftot=complex(R_1,X_1)+Z_f;
Z_btot=complex(R_1,X_1)+Z_b;
I_f=V_f/Z_ftot;
I_b=V_b/Z_btot;
w_s=157.1;
T_s=(2/157.1)*(abs(I_f)^2*real(Z_f)-abs(I_b)^2*real(Z_b));disp(T_s,'starting torque(Nm)');
I_m=I_f+I_b;m=atand(imag(I_m)/real(I_m));
I_a=imult(I_f-I_b);a=atand(imag(I_a)/real(I_a));
P_m=w_s*(1-s)*T_s;
P_L=200;
P_out=P_m-P_L;
P_min=V*abs(I_m)*cosd(m);
P_ain=V*abs(I_a)*cosd(a); 
P_in=P_min+P_ain;
n=P_out/P_in;
disp(n,'efficiency');

r=Z_ftot/Z_btot;    //r=V_mf/V_bf
//V_mf+V_bf=220
V_mf=220/(1+r);
V_mb=220-V_mf;
V_a=imult(V_mf-V_mb);
disp(abs(V_a),'V_a(V)');

