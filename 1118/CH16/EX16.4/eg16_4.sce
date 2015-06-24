clear;
//clc();

sb=7.5*10^6;
vl=3.3*10^3;
sga=3;
sgb=4.5;
xgb=0.08;
xga=0.07;
xga_pu=sb*xga/sga;
xgb_pu=sb*xgb/sgb;

xgp=(xga_pu*xgb_pu)/(xga_pu+xgb_pu);
xu=0.0724;

ifl=sb/(sqrt(3)*vl);
vn=vl/sqrt(3);
x=xu*vn/ifl;
printf("the reactance of the reactor is:%.3f A",x);
