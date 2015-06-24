//water chemistry//
//example 7.8//
W1=219;//amount of Mg(HCO3)2 in water in ppm//
W2=36;//amount of Mg2+ in water in ppm//
W3=18.3;//amount of (HCO3)- in water in ppm//
W4=1.5;//amount of H+_in water in ppm//
M1=100/146;//multiplication factor of Mg(HCO3)2//
M2=100/24;//multiplication factor of Mg(HCO3)2//
M3=100/122;//multiplication factor of Mg(HCO3)2//
M4=100/2;//multiplication factor of Mg(HCO3)2//
P1=W1*M1;//in terms of CaCO3//
P2=W2*M2;//in terms of CaCO3//
P3=W3*M3;//in terms of CaCO3//
P4=W4*M4;//in terms of CaCO3//
L=0.74*((2*P1)+P2+P3+P4);
printf("Lime required is %fmg/l",L);
R=1;//water supply rate in m^3/s//
D=R*60*60*24*L;
printf("\nLime required for one day is %fm^3/day",D);
K=D*1000;//in lit/day//
T=K/10^9;//in tonnes//
S=1.06*(P2+P4-P3);
printf("\nSoda required is %fmg/l",S);
D2=R*60*60*24*S;
printf("\nSoda required per day is %fm^3/day",D2);
A=D2*1000;//in lit/day//
B=A/10^9;//in tonnes//
J1=90/100;//purity of lime//
J2=95/100;//purity of soda//
C1=500;//cost of one tonne lime//
C2=7000;//cost of one tonne soda//
CL=T*C1/J1;
printf("\ncost of lime is %fRs",CL);
CS=B*C2/J2;
printf("\ncost of soda is %fRs",CS);
C=CL+CS;
printf("\ntotal cost is %fRs",C);


