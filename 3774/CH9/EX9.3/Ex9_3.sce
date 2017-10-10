// exa 9.3 Pg 259
clc;clear;close;

// Given Data
d=10;// mm
p=3;// mm
mu=0.15;// coefficient of thread friction
mu_c=0.20;// coefficient of collar friction
dc=15;// mm
F=60;// N
W=4;// kN
two_beta=30;// degree
h=25;// mm
lf=150;// mm (screw free length)

dm=d-p/2;// mm
alfa=atand(p/(%pi*dm));// degree
mu_e=mu/cosd(two_beta/2);// virtual coefficient of friction
fi=atand(mu_e);// degree
Tf=W*10**3*dm/2*tand(alfa+fi);// N.mm
Tc=mu_c*W*10**3/2*dc;// N.mm
T=Tf+Tc;// N.mm
//F*l=T
l=T/F;// mm (Length of handle)
printf('\n (a) Length of handle = %.1f mm',l)

printf('\n\n (b) Maximum shear stress in screw')
printf('\n Section 1-1 : ')
dc=d-p;//mm
tau=16*T/(%pi*dc**3);// N/mm.sq.
M=F*lf;// N.mm
sigma_b=32*M/(%pi*dc**3);// N/mm.sq.
tau_max=sqrt((sigma_b/2)**2+tau**2);// MPa
printf('\n Maximum shear stress = %.2f MPa',tau_max)
printf('\n Section 2-2 : ')
sigma_c=4*W*10**3/(%pi*dc**2);// N/mm.sq. (Direct compressive stress)
tau2=16*Tc/(%pi*dc**3);//;// N/mm.sq. (Tortional shear stress)
tau_max=sqrt((sigma_c/2)**2+tau2**2);// MPa
printf('\n Maximum shear stress = %.2f MPa',tau_max)

//h=n*p;// height of nut
n=ceil(h/p);// no. of threads
t=p/2;// mm (thickness of threads)
pb=W*10**3/(%pi*dm*t*n);// MPa
printf('\n\n (b) Bearing pressure on threads = %.1f MPa',pb)
