// (a)to calculate field current and flux/pole(b)to calculate open ckt ph and line voltages
// (c)to caculate field current

clc;
B_peak=1.65;
g=.008;
u_o=4*%pi*10^-7;
P=4;
K_b=.957;
N_field=364/2;
I_f=B_peak*%pi*g*P/((4*u_o)*(K_b*N_field));
disp(I_f,'field current(A)');
l=1.02;    //rotor length
r=.41/2;    //rotor radius
phi=(4/P)*B_peak*l*r;
disp(phi,'flux/pole(Wb)');
N_ph=3*11*P/2;
ga=60/3;    //slot angle
m=3;
f=50;
K_b=sind(m*ga/2)/(m*sind(ga/2));    //breadth factor
E_ph=sqrt(2)*%pi*K_b*f*N_ph*phi;
disp(E_ph,'E_ph(V)');
E_line=sqrt(3)*E_ph;
disp(E_line,'E_line(V)');
I_fnew=.75*I_f;
disp(I_fnew,'I_f(new)(A)');