// to find the phase and line voltages

clc;
f=50;    //freq
n=600;    //speed in rpm
p=120*f/n;
ph=3;
m=4;        //slots/pole/ph
S=p*ph*m;    //slots
t=12;        //turns per coil
N_ph=S*t/ph;
g=180*p/S;
K_b=sind(m*g/2)/(m*sind(g/2));    //breadth factor
cp=10;        //coil pitch
pp=S/cp;        //pole pitch
theta_sp=(pp-cp)*g;    //short pitch angle
K_p=cosd(theta_sp/2);
phi=.035; 
E_p=4.44*K_b*K_p*f*N_ph*phi;
disp(E_p,'phase voltage(V)');
E_l=sqrt(3)*E_p;
disp(E_l,'line voltage(V)');
