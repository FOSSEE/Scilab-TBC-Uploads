// to find the frequency and phase and line voltages

clc;
n=375;        //speed in rpm
p=16;        //no of poles
f=n*p/120;
disp(f,'freq(Hz)');
S=144;        //no of slots
c=10;        //no of conductors/slot
t=S*c/2;        //no of turns
ph=3;
N_ph=t/ph;    //no of turns/ph
g=180*p/S;    //slots angle
m=S/(p*ph);    //slots/pole/phase
K_b=sind(m*g/2)/(m*sind(g/2));    //breadth factor
phi=0.04;    //flux per pole
E_p=4.44*K_b*f*N_ph*phi;
disp(E_p,'phase voltage(V)');
E_l=sqrt(3)*E_p;
disp(E_l,'line voltage(V)');
