//Find inductive reactance of 3 phase bundled conductor
clear;
clc;
//soltion
//given
r=1.75*10^-2;//m//radius of the conductor
re=r*exp(-1/4);
d=7;//spacing
S=0.4;//spacing between subconductors
Ds=sqrt(re*S);//GMR
dab=7;
dab_=7.4;
da_b=6.6;
da_b_=7;
Dab=(dab*dab_*da_b*da_b_)^.25;
Dbc=Dab;
dca=14;
dca_=13.6;
dc_a=14.4;
dc_a_=14;
Dca=(dca*dca_*dc_a*dc_a_)^.25;
Dm=(Dab*Dca*Dbc)^(1/3);//GMD
L=0.2*log(Dm/Ds);
printf("Inductance(L)=%.4f mH/km\n",L);
Xl=2*%pi*50*L*10^-3;
printf("Inductive reactance= %.1f Ω/km\n",Xl);
r1=sqrt(2*((r*10^2)^2));
re1=r1*exp(-1/4);
Dab1=7;
Dbc1=7;
Dca1=14;
Dm1=(Dab1*Dbc1*Dca1)^(1/3);//GMD of single conductor line
L1=0.2*log(Dm1/(re1*10^-2));
printf("Inductance(L)=%.3f mH/km\n",L1);
Xl1=2*%pi*50*L1*10^-3;
printf("Inductive reactance= %.3f Ω/km",Xl1);
