// to find fundamental mmf wave,speed and its peak value

clc;
p=4;
f = 50;
S=60;
g=180*p/S;
ph=3;
m=S/(p*ph);    //slots/pole/phase
K_b=sind(m*g/2)/(m*sind(g/2));    //breadth factor
I_L=48;
I_P=I_L/sqrt(3);
I_Pmax=I_P*sqrt(2);
c=24;        //conductors
N_ph=S*c/(ph*2);      //turns/phase
F_m=(4/%pi)*K_b*(N_ph/p)*I_Pmax;
disp(F_m,'F_m(AT/pole)');
F_peak=(3/2)*F_m;
disp(F_peak,'F_peak(AT/pole)');
n=120*f/p;
disp(n,'speed(rpm)');