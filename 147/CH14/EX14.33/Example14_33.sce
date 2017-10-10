close();
clear;
clc;
Il = 50; //A
pf1 = 0.707;
V1 = 220; //V
Xs = 1.27; //ohm
P2 = 33*1000; //kV
phia = 30; //degree 
phia_rad = phia*%pi/180; //rad
//(a)
//power developed per phase 'Pd'
Pd = P2/3;
Vo = sqrt(3)*Pd*Xs*sin(phia_rad)/V1; //V
//by parallel connections
Vt = V1/sqrt(3);
//from isosceles triangle
d = (90-phia)/2;
//motor reactive power 'Q'
Q = 3*(Vt^2)*sin(phia_rad)/Xs; //VAr
mprintf("(a) Reactive power of motor, Q = %d kVAr\n\n",Q/1000);

//(b)
Ia = Vt/Xs;
phil = -45; //degree 
phil_rad = phil*%pi/180; //rad
//overall power factor 'pf'
pf = cos(atan((Ia*sin(phia_rad) + Il*sin(phil_rad))/(Ia*cos(phia_rad) + Il*cos(phil_rad))));
mprintf("(b) The overall power factor = %0.3f",pf);