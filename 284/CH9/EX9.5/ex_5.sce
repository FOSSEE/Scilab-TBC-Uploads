// Chapter 9_The bipolar transistor
//Caption_Non ideal effects
//Ex_5//page 376
T=300
e=1.6*10^-19
NB=5*10^16     //doping concentration in base
NC=2*10^15     //doping concentration in collecor
XB=0.70*10^-4   //mettulurgical base width
ni=1.5*10^10     //intrinsic ion concentration
Vbi=0.718    //built-in potential
Vcb1=2
eps=11.7*8.85*10^-14
xdb1=(2*eps*(Vbi+Vcb1)*NC/(e*NB*(NC+NB)))^0.5
Vcb2=10
xdb2=(2*eps*(Vbi+Vcb2)*NC/(e*NB*(NC+NB)))^0.5
xb1=XB-xdb1    //neutral base width
xb2=XB-xdb2
del_xb=((xb1-xb2)/xb1)*100
printf('The neutral base width changes by %1.0f percent as the C-B voltage changes from 2 to 10 V',del_xb)

