// exa 9.4 Pg 260
clc;clear;close;

// Given Data
W=25;// kN
two_beta=29;// degree
v=0.96;// m/min
mu=0.14;// coefficient of thread friction
Di=30;// mm
Do=66;// mm
mu_c=0.15;// coefficient of collar friction
d=36;// mm
p=6;// mm
Sut=630;// MPa
Syt=380;// MPa

dm=d-p/2;// mm
dc=d-p;// mm
l=2*p;// mm
alfa=atand(l/(%pi*dm));// degree
mu_e=mu/cosd(two_beta/2);// virtual coefficient of friction
fi=atand(mu_e);// degree
Tf=W*10**3*dm/2*tand(alfa+fi);// N.mm
Tc=mu_c*W*10**3/4*(Do+Di);// N.mm
T=Tf+Tc;// N.mm
N=v*10**3/l;// rpm

P=2*%pi*N*T/(60*10**3)*10**-3;// kW
printf('\n Power required to drive the slide = %.2f kN',P)
sigma_c=4*W*10**3/(%pi*dc**2);// MPa
tau=16*T/(%pi*dc**3);// MPa
sigma1=1/2*(sigma_c+sqrt(sigma_c**2+4*tau**2));// MPa
tau_max=sqrt((sigma_c/2)**2+tau**2);// MPa
n_t=Syt/sigma1;// factor of safety in tension
printf('\n factor of safety in tension = %.2f ',n_t)
n_s=Syt/2/tau_max;// factor of safety in shear
printf('\n factor of safety in shear = %.2f ',n_s)
// Note- Answer in the textbook are not accurate.
