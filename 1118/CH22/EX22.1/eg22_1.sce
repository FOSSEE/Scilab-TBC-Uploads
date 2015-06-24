clear;
//clc();
v=132;
f=50;
l=150;
d=19.53*10^(-3);
t=30;
p=750;
v_grad=21.1;
sur_fact=0.85;
l_sur_fact=0.72;
g_sur_fact=0.82;
D=3.8;

r=d/2;
del=(0.392*p)/(273 + t);
e=v_grad*100*sur_fact*r*del*log([D/r]);
printf("The disruptive critical voltage is:%.2f kV\n",e);

ev=v_grad*100*l_sur_fact*r*del*(1 +(0.0301/sqrt(r*del)))*log([D/r]);
printf("The visual critical voltage for local corona is:%.2f kV\n",ev);

evg=v_grad*100*g_sur_fact*r*del*(1 +(0.0301/sqrt(r*del)))*log([D/r]);
printf("The visual critical voltage for general corona is:%.2f kV",evg);

