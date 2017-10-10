close();
clear;
clc;
Vm = 200;
w = 377;
Im = 8; //A
theta = 30; //degree
//(a) power factor 'pf'
pf = cos(theta*(%pi)/180);
mprintf("Power factor, pf = %0.3f\n\n",pf);

//(b) true power 'S'
S = Vm*Im/2 * pf; //W
mprintf("True Power, S = %0.1f W\n\n",S);

//(c)Apparant power 'Q'
Q = Vm*Im/2; //VA
mprintf("Apparant power, Q = %d VA\n\n",round(Q));

//(d)Reactive Power 'P'
P = Vm*Im*sqrt(1-pf^2)/2; //VAr
mprintf("Reactive power, P = %d VAr",round(P));