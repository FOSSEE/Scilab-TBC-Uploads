clear
clc;
d=45;
D=12e2;
rad=1.6;

//(a)
reff=.7788*rad;
GMR=(reff*d*reff*d)^(1/4);
Dab=(D*(D+d)*D*(D-d))^(1/4);
Dbc=Dab;
Dca=((D*2)*((2*D)+d)*(D*2)*((2*D)-d))^(1/4);
Deq=(Dab*Dbc*Dca)^(1/3);
L=.4605 *log10 (Deq/GMR);
mprintf("\n(a)\tL=%.2f mH/km",L);

//(b)
R=sqrt(2)*rad;
reff=R*.7788;
Deq=(D*D*(2*D))^(1/3);
L=.4605 *log10 (Deq/reff);

mprintf("\n(b)\tL=%.3f mH/km",L);
