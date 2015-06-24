//To calculate resultant AT/pole and peak air gap flux density, rotor AT/pole, stator AT and its angle with the resultant AT, stator currrent

clc;
ph=3;
S=36;
c=8*2;
p=4;
f=50;
N_ph=S*c/(ph*2);      //turns/phase
ga=180*p/S;
m=S/(p*ph);    //slots/pole/phase
K_b=sind(m*ga/2)/(m*sind(ga/2));    //breadth factor
V_L=400;
V_ph=V_L/sqrt(3);
phi_r=V_ph/(4.44*K_b*f*N_ph);
disp(phi_r,'phi_r(Wb/pole)');
D=.16;
l=0.12;
PA=%pi*l*D/4;        //pole area
B_rav=phi_r/PA;
B_rpeak=(%pi/2)*B_rav;
g=2*10^-3;
u_o=4*%pi*10^-7;
F_r=g*B_rpeak/u_o;
disp(F_r,'F_r(AT/pole)');
T=60;        //torque(Nm)
d=26;
F2=T/((%pi/2)*(p/2)^2*phi_r*sind(d));
disp(F2,'F2(AT/pole)');
F1=sqrt(F2^2+F_r^2-2*F2*F_r*sind(d));
disp(F1,'F1(AT/pole)');
w=acosd((F1^2+F_r^2-F2^2)/(2*F1*F_r));
disp(w,'angle(deg)');
K_w=K_b;
I_a=F1/((3/2)*(4*sqrt(2)/%pi)*K_w*(N_ph/p));
disp(I_a,'I_a(A)');