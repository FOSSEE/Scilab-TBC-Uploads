//find capacitive reactance to neutral and charging current
clear;
clc;
//soltion
//given
r=1.25*10^-2;//m//radius of the conductor
f=50//frequency
Vph=132*1000/sqrt(3);//phase voltage
Eo=8.85*10^-12//permitivity of the air
drr_=sqrt(7^2+(4+4)^2);
dbb_=drr_;
dyy_=9;
Dsr=sqrt(r*drr_);
Dsy=sqrt(r*dyy_);
Dsb=sqrt(r*dbb_);
Ds=(Dsr*Dsy*Dsb)^(1/3);
dry=sqrt(4^2+(4.5-3.5)^2);
dry_=sqrt((9-1)^2+4^2);
Dry=sqrt(dry*dry_);
Dyb=Dry;
Dbr=sqrt(8*7);
Dm=(Dyb*Dbr*Dry)^(1/3);
C=2*%pi*Eo/(log(Dm/Ds));
printf("Capacitance per phase= %.2f*10^-9 F/km\n",C*10^12);
Cr=1/(2*%pi*f*C*1000);
printf("Capacitance per phase= %.2f kΩ\n",Cr/1000);
Ic=(2*%pi*f*C*1000)*Vph;
printf("Charging current= %.4f A/km",Ic);
