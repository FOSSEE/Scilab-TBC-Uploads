// To calculate the induced emf in each sheath .
clear
clc;
rm=(2.28/2)-(.152/2);// mean radius of sheath (cm)
d=5.08;
a=d/rm;
w=314;
Xm=2*(10^-7)*log(a);// mutual inductance (H/m)
Xm2=2000*Xm;
V=w*Xm2*400;
mprintf("Voltage induced =%.2f volts \n",V);//Answer don't match exactly due to difference in rounding off of digits i between calculations
