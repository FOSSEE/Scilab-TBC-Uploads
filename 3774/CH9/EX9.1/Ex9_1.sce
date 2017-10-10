// exa 9.1 Pg 256
clc;clear;close;

// Given Data
d=26;// mm
p=5;// mm
W=10;// kN
Do=50;// mm
Di=20;// mm
mu=0.2;// coefficient of thread friction
mu_c=0.15;// coefficient of collar friction
N=15;// rpm
pb=6;// MPa

dm=d-p/2;// mm
dc=d-p;// mm
t=p/2;//mm
l=2*p;// mm
alfa=atand(l/(%pi*dm));// degree
fi=atand(mu);// degree
Tf=W*dm/2*tand(alfa+fi);// N.mm
Tc=mu_c*W/4*(Do+Di);// N.mm
T=Tf+Tc;// N.mm
printf('\n (a) Stress in the screw')
sigma_c=4*W*10**3/(%pi*dc**2);// N/mm.sq.
printf('\n Direct compressive stress = %.2f N/mm.sq',sigma_c)
tau=16*T*10**3/(%pi*dc**3);//N/mm.sq.
printf('\n Tortional shear stress = %.2f N/mm.sq',tau)
tau_max=sqrt(sigma_c**2/4+tau**2);//MPa
printf('\n Maximum shear stress = %.2f N/mm.sq',tau_max)
n=W*10**3/(%pi*dm*t*pb);
printf('\n\n (b) number of threads of nut in engagement = %.f',n)
