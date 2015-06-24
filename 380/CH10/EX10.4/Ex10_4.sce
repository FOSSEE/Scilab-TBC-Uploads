//Caption:Find the equivalent circuit parameters
//Exa:10.4
clc;
clear;
close;
R_m=2.5;//main winding resistance
R_a=100;//auxilary winding resistance
//blocked-rotor test
V_bm=25;//voltage (in Volts)
I_bm=3.72;//current (in Amperes)
P_bm=86.23;//power (in Watts)
//with auxilary winding open no load test
V_nL=115;//voltage (in Volts)
I_nL=3.2;//current (in Amperes)
P_nL=55.17;//power (in Watts)
//with main winding open blocked rotor test
V_ba=121;//voltage (in Volts)
I_ba=1.2;//current (in Amperes)
P_ba=145.35;//power (in Watts)
Z_bm=V_bm/I_bm;
R_bm=P_bm/I_bm^2;
X_bm=sqrt(Z_bm^2-R_bm^2);
X1=0.5*X_bm;
X2=X1;
R2=R_bm-R_m;
disp(X1,'X1 (in ohms)=');
disp(X2,'X2 (in ohms)=');
disp(R2,'R2 (in ohms)=');
Z_nL=V_nL/I_nL;
R_nL=P_nL/I_nL^2;
X_nL=sqrt(Z_nL^2-R_nL^2);
X_m=2*X_nL-0.75*X_bm;
P_r=P_nL-I_nL^2*(R_m+0.25*R2);
disp(int(P_r),'P_r (in Watts)=');
disp(X_m,'X_m (in ohms)=');
Z_ba=V_ba/I_ba;
R_ba=P_ba/I_ba^2;
R_2a=R_ba-R_a;
alpha=sqrt(R_2a/R2);
disp(alpha,'alpha=');