//Example 17.3
//Rolling Load
//Page No. 599
clc;clear;close;

h0=1.5;                    //in inches
mu=0.3;                    //no unit
D=36;                    //in inches
s_en=20;                    //in ksi
s_ex=30;                    //in ksi
C=3.34*10^-4;                    //in inches^2/ton
P_=1357;                    //in tons
h1=h0-0.3*h0;
dh=h0-h1;
h_=(h1+h0)/2;
R=D/2;
R1=R*(1+C*P_/(s_ex*(dh)));
Lp=sqrt(R1*dh);
Q=mu*Lp/h_;
sigma0=(s_en+s_ex)/2;
P2=sigma0*(exp(Q)-1)*s_ex*Lp/Q;
P2=P2*0.45359                         ///conversion to tons
R2=R*(1+C*P2/(s_ex*(dh)));
printf('\nP2 = %g tons\nR2 = %g in',P2,R2);
