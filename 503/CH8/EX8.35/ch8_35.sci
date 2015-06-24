//to determine op current and pf

clc;
P1=400*10^3;
P2=400*10^3;
P3=300*10^3;
P4=800*10^3;
pf1=1;
pf2=.85;
pf3=.8;
pf4=.7;
phi1=acosd(pf1);
phi2=acosd(pf2);
phi3=acosd(pf3);
phi4=acosd(pf4);
P=P1+P2+P3+P4;
Q1=P1*tand(phi1);
Q2=P2*tand(phi2);
Q3=P3*tand(phi3);
Q4=P4*tand(phi4);
Q=Q1+Q2+Q3+Q4;

I=100;
pf=.9;
V=6600;
P_A=sqrt(3)*V*I*pf;
P_B=P-P_A;
Q_A=P_A*tand(acosd(pf));
Q_B=Q-Q_A;
phi=atand(Q_B/P_B);
pf=cosd(phi);disp(pf,'pf');
I_B=P_B/(sqrt(3)*pf*V);disp(I_B,'op current(A)');