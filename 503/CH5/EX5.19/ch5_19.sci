// to calculate amplitude of travelling wave mmf,peak value of air flux density, velocity of wave, current freq at some desired velocity

clc;
K_w=.925;
N_ph=48;
I=750/sqrt(2);
wndnglgth=2;
wavelgth=wndnglgth/0.5;
p=2*wavelgth;
F_peak=(3/2)*(4*sqrt(2)/%pi)*K_w*(N_ph/p)*I;
disp(F_peak,'F_peak(A/m)');
g=.01;
u_o=4*%pi*10^-7;
B_peak=u_o*F_peak/g;
disp(B_peak,'B_peak(T)');
f=25;
B=.5;
v=f*B;    disp(v,'velocity(m/s)');
vv=72*10^3/3600;        //given velocity
f=vv/0.5;
disp(f,'freq(Hz)');