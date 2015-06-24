clearglobal;
clc;

V=220e3;
f=50;
l=200;
d1=6;
d2=12;
rad=1.81e-2;

Deq=(d1*d1*d2)^(1/3);
Cn=.02412/log10(Deq/rad);
mprintf("Capacitance per phase per km = %.1f *1e-3 e-6F/phase/km \n",Cn *1000);
C=l*Cn;
C=round(C*100)/100
mprintf("Capacitance per phase = %.2f e-6F/phase\n",C);
Xc=1/(2 * %pi * f * C *1e-6);
mprintf("Capacitive reactance per phase = %.0f ohms/phase\n",Xc);
I=2 * %pi * f * C *1e-6 * V / sqrt(3);
I=round(I*100)/100
mprintf("Charging current = %.2f A/phase\n",I);
MVA=sqrt(3)*V *I *1e-6;
mprintf("Charging MVA = %.2f MVA\n",fix(MVA*100)/100);
