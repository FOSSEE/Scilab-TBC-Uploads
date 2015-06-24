//to find the pf and current supplied by the m/c

clc;
P=50000;
pf=.8;
phi=acosd(pf);
Q=P*tand(phi);
P1=P/2;
pf1=.9;
phi1=acosd(pf1);
Q1=P1*tand(phi1);
P2=P/2;
Q2=Q-Q1;
phi2=atand(Q2/P2);
pf=cosd(phi2);disp(pf,'pf');
V_L=400;
I2=P2/(sqrt(3)*V_L*pf);disp(I2,'current supplied by m/c(A)');
