//Chapter 21, Problem 14
clc;
n1=600;                             //primary turns
n2=150;                             //secondary turns
r1=0.25;                            //primary resistance
r2=0.01;                            //secondary resistance
x1=1;                               //leakage reactance
x2=0.04;
re=r1+r2*(n1/n2)^2;                 //equivalent resistance
xe=x1+x2*(n1/n2)^2;                 //equivalent reactance
ze=sqrt(re^2+xe^2);                 //equivalent impedance
phie=acos(re/ze);                   //phase angle of the impedance
printf("(a) Equivalent resistance = %.2f ohms\n\n",re);
printf("(b) Equivalent reactance = %.2f ohms\n\n",xe);
printf("(c) Equivalent impedance = %.2f ohms\n\n",ze);
printf("(d) Phase angle of the impedance = %.2f deg",phie*180/%pi);
