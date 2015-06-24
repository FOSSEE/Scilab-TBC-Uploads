// to calculate (a)open ckt current,power and pf when LV excited at rated voltage
// (b) voltage at which HV side is excited, ip power and its pf

clc;
r=150000;                                    //rating(VA)
V1=2400;
V2=240;
a=V1/V2;

R_1=.2;
X_1=.45;
R_i=10000;
R_2=2*10^-3;
X_2=4.5*10^-3;
X_m=1600;
//Referring the shunt parameters to LV side
R_iLV=R_i/a^2;
X_mLV=X_m/a^2;
I_oLV=[V2/100 V2/16];
I_o=sqrt(I_oLV(1)^2+I_oLV(2)^2);    disp(I_o,'I_o(A)');
pf=cosd(atand(I_oLV(2)/I_oLV(1)));    disp(pf,'pf');
//equivalent series parameters referred to HVside
R=R_1+R_2*a^2;    
X=X_1+X_2*a^2;    
Z=complex(R,X);    disp(Z,'Z(ohm)');
z=[R X];
I_flHV=r/V1;
V_scHV=I_flHV*sqrt(R^2+X^2);
P_sc=I_flHV^2*R;    disp(P_sc,'P_sc(W)');
pf_sc=cosd(atand(X/R));    disp(pf_sc,'pf_sc');
