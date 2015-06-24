// To determine peak value of fundamental mmf

clc;
f=50;
n_s=300;
p=120*f/n_s;
P=400*1000;    //power
V=3300;
I_L=P/(sqrt(3)*V);
I_P=I_L;
I_m=sqrt(2)*I_P;    //max value of phase current
S=180;
g=180*p/S;
ph=3;
m=S/(p*ph);    //slots/pole/phase
K_b=sind(m*g/2)/(m*sind(g/2));    //breadth factor
c=8;        //conductors/1 coil side
N_ph=S*c/(ph*2);      //turns/phase
F_m=(4/%pi)*K_b*(N_ph/p)*I_m;
F_peak=(3/2)*F_m;
disp(F_peak,'peak mmf(AT/pole)');
