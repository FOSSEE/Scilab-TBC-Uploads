// To determine efficiency and regulation of line
clear
clc;
a=100/.5
Xl=2*(10^-7)*log(100/.5);//inductance(H/meter)
XL=20*(1000)*Xl;// inductance of 20 km length 
R=6.65;// resistance(ohm)
Rc=20*1000/(58*90);// resistance of copper(ohm)
I=10*1000/(33*.8*sqrt(3));// the current(amps.)
Pl=3*I*I*Rc/(10^6);//loss (MW)
n=10/(10+Pl);
mprintf("efficiency=%.4f percent \n",n);
Vr=19052;
cosr=.8;//power factor
sinr=.6;
Vs=abs(((Vr*cosr+I*Rc) +%i*(Vr*sinr+ I*R)));
mprintf("Vs =%.0f volts\n",Vs);//Answer don't match due to difference in rounding off of digits
Reg=(Vs-Vr)*100/Vr;
mprintf(" regulation =%.2f percent",Reg)
