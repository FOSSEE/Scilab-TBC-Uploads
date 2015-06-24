// sum 18-6
clc;
clear;
P=7500;
N=1440;
w=2*%pi*N/60;
T=P/w;
r=0.2;
//Let T1-T2=t
t=T/r;
T2=t/2.5;
T1=3.5*T2;
R=0.125;
Ft=T/R;
Fr=Ft*tan(20*%pi/180);
// RD & RA are reaction forces calculated in vertical and horizontal directions from FBD by force equilibrium
RDv=186.5;
RAv=236.2;
RDh=36.2;
RAh=108.56;
RA=sqrt(RAv^2+RAh^2);
RD=sqrt(RDv^2+RDh^2);
Ks=1.4;
P1=RA*Ks;
P2=RD*Ks;
//let designation,d,D,B,C at bearing B1 be De1,d1,C1
d1=25;
C1=3120;
De1=61805;
//let designation,d,D,B,C at bearing B2 be De2,d2,C2
d2=25;
C2=2700;
De2=61804;
L1=(C1/P1)^3;
Lh1=L1*10^6/(720*60);
L2=(C2/P2)^3;
Lh2=L2*10^6/(720*60);

  // printing data in scilab o/p window
  printf("Lh1 is %0.0f hrs    ",Lh1);
  printf("\n Lh2 is %0.0f hrs    ",Lh2);
  
  //Incorrect value of P2 is taken in the book while calculating L2.