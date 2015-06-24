f=1*10^9;
w=6*10^-3; //width
d=1*10^-3; //seperation
epsilonr=2.25;
epsilon0=8.85*10^-12;
sigma_diel=0.125;
sigma_cond=64.5*10^6;
mu0=4*%pi*10^-7;
skindepth=1/sqrt(%pi*sigma_cond*mu0*f);
r=2/(w*sigma_cond*skindepth);
L=2/(w*sigma_cond*2*%pi*f*skindepth);
c=epsilon0*epsilonr*w/d;
G=sigma_diel*w/d;
disp("R,L,G,C parameters of a parallel copper plate transmission line ")
disp(r,"Resistance in ohm/m");
disp(L,"Inductance in Henry/m");
disp(c,"Capacitance in Farad/m");
disp(G,"Conductance in mS/m");