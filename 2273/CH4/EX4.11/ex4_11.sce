//Find the inductance of an ASCR 3 phase line
clear;
clc;
//soltion
//given
r=5/2;//mm//radius of the conductor
re=r*2.177*10^-3;//m
dx=6;//m//spacing in X direction
dy=8;//m//spacing in Y direction
daa_=sqrt(dx^2+(2*dy)^2);
dbb_=6;
dcc_=daa_;
dab=8;
dab_=sqrt(dx^2+dy^2);
dbc=8;
dbc_=sqrt(dx^2+dy^2);
dca_=6;
dca=16;
Dsa=sqrt(re*daa_);
Dsb=sqrt(re*dbb_);
Dsc=sqrt(re*dcc_);
Ds=(Dsa*Dsb*Dsc)^(1/3);
printf("Self GMD or GMR, Ds= %.4fm\n",Ds);
Dab=sqrt(dab*dab_);
Dbc=sqrt(dbc*dbc_);
Dca=sqrt(dca*dca_);
Dm=(Dab*Dbc*Dca)^(1/3);
printf("GMD, Dm= %.2fm\n",Dm);
L=0.2*log(Dm/Ds);
printf("Inductance of 100 km line (L)=%.4f H\n",L*0.1);
L_=0.1*log((2^(1/3))*(dy/re)*((dx^2+dy^2)/(4*dy^2+dx^2))^(1/3));
printf("Inductance(By another method) per phase per km(L)=%.4f H\n",L_*.1);
