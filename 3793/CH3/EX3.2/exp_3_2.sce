clear;
clc;
Aln=6;
Dacsr=6;
f=50;
DAl=2;
d1=120//distance
Dst=(Dacsr-(2*DAl));
d12=2;
d16=2
d=2;
d13=sqrt(3)*d;
d15=sqrt(3)*d;
d14=2*d;
Ds=((((.7788*d)*(d^2)*((sqrt(3)*d)^2)*(2*d))^6)^(1/36));// in book answer is misprinted of ds
L=(((2*(10^(-7)))*(log1p(d1/Ds)))*(10^6));
mprintf("L=%.5f mH/km\n",L);
Li=2*L;
mprintf(" Loop inductance = %.5f mH/km\n",Li);
Xl=(2*(3.14)*(f*Li)*(10^(-3)))
mprintf(" Inductive Reactance= %.5f ohm/km",Xl);

