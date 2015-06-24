// to calculate flux/pole

clc;
S=42;
p=2;
ph=3;
m=S/(p*ph);    //slots/pole/phase
g=180*p/S;    //slots angle
K_b=sind(m*g/2)/(m*sind(g/2));    //breadth factor
cp=17;
pp=S/p;
theta_sp=(pp-cp)*g;    //short pitch angle
K_p=cosd(theta_sp/2);
N_ph=S*2/(ph*p*2);        //2 parallel paths
E_p=2300/sqrt(3);
phi=E_p/(4.44*K_b*K_p*f*N_ph);
disp(phi,'flux/pole(Wb)');
