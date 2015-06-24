// To determine the clearence between the conductor and water level
clear
clc;
T=2000;// working tension (kg)
w=1;
c=T/w;
h=90-30;
l=300;//span(m)
a=(l/2)-(c*h/l);
b=550;
d1=a*a/(2*c);
d2=(400^2)/(2*c);// sag at 400 metres(m)
Hm=d2-d1;//height of mid point with respect to A
Cl=30+Hm;
mprintf("the clearence between the conductor and water level midway between the towers= %.3f metres \n",Cl);
