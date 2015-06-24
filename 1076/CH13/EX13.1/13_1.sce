clear;
clc

Xd=.7
pf=.8
pfa=acos(pf)
V=1
I0=1* exp( %i * pfa *-1)
E0=V+ (%i * Xd * I0)
E=round(abs(E0)*100)/100
d0=atand(imag(E0)/real(E0))
E0=E * exp(%i * d0 * %pi/180)
Pe0=E*V*sind(d0)/Xd
Qe0=(E*V*cosd(d0)/Xd)-(V*V/Xd)

mprintf("\n(a)\nPe= %.1f Qe=%.1f E= %.2f load angle=%.1f",Pe0, Qe0, E, d0);

e1=E0
E1=abs(e1)
Pe1=1.2* Pe0;
d1=asind(Pe1* Xd/ (V*E1))
Qe1=(E1*V*cosd(d1)/Xd)-(V*V/Xd)

mprintf("\n(b)\nPe= %.2f Qe=%.2f E= %.2f load angle=%.1f",Pe1, Qe1, E1, d1);

e2=1.2 * E0
E2=abs(e2)
Pe2=Pe0;
d2=asind(Pe2* Xd/ (V*E2))
Qe2=(E2*V*cosd(d2)/Xd)-(V*V/Xd)

mprintf("\n(c)\nPe= %.1f Qe=%.2f E= %.2f load angle=%.1f",Pe2, Qe2, E2, d2);
