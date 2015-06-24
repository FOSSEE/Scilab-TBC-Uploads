clear;
//clc();
z1=400;
z2=40;
ef=100;
voh=300000;..//velocity of overhead line
vc=140000;..//velocity of cable
rho1=(z2-z1)/(z2 + z1);
er=rho1*ef;
printf("The voltage transmitted into the cable is:%.2f kV\n",er);
tauv=(2*z2)/(z2+z1);
et=tauv*ef;
printf("The voltage transmitted into the cable is:%.2f kV",et);
