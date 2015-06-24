//exa 1.7
clc;clear;close;
format('v',9);
dmax=40;//MW//Maximum demand
CF=0.5;//Capacity Factor
UF=0.8;//Utilisation Factor
LF=CF/UF;///Load Factor
disp(LF,"(a) Load Factor : ");
C=dmax/UF;//MW//Plant Capacity
disp(C,"(b) Plant Capacity(MW) : ");
RC=C-dmax;//MW//Reserve Capacity
disp(RC,"(c) Reserve Capacity(MW) : ");
p=dmax*LF*24*365;//MWh//Annual Energy Production
disp(p,"(d) Annual Energy Production(MWh) : ");
