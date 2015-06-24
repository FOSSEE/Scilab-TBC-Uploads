//Example 17.2
//Rolling Load
//Page No. 598
clc;clear;close;

h0=1.5;                    //in inches
mu=0.3;                    //no unit
D=36;                    //in inches
s_en=20;                    //in ksi
s_ex=30;                    //in ksi
h1=h0-0.3*h0;
dh=h0-h1;
h_=(h1+h0)/2;
Lp=sqrt(D/2*dh);
Q=mu*Lp/h_;
sigma0=(s_en+s_ex)/2;
P=sigma0*(exp(Q)-1)*s_ex*Lp/Q;
printf('\nRolling Load = %g kips',P);
P=sigma0*(Lp/(4*dh)+1)*s_ex*Lp;
printf('\nRolling Load  if sticking friction occurs = %g kips',P);
