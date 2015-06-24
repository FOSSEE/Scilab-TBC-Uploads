// Determine the capacitance (a)between any two conductors (b)between any two bunched conductors and the third conductor (c)Also calculate the charging current per phase per km
clear
clc;
C1=.208;
C2=.096;
Cx=3*C1;
w=314;
V=10;
Cy=(C1+ 2*C2);
Co=((1.5*Cy)-(Cx/6));
C=Co/2;
mprintf("(i)Capacitance between any two conductors=%.3f micro-Farad/km\n",C);
c=((2*C2 + ((2/3)*C1)));
mprintf("(ii)Capacitance between any two bunched conductors and the third conductor=%.2f micro-Farad/km\n",c);
I=V*w*Co*1000*(10^-6)/sqrt(3);
mprintf("(iii)the charging current per phase per km =%.3f A\n",I);
