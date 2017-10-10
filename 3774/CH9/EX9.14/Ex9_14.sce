// exa 9.14 Pg 278

clc;clear;close;

// Given Data
d=32;// mm
p=5;// mm
W=12;// kN
D3=50;// mm
D4=20;// mm
mu=0.15;// coefficient of thread friction
mu_c=0.20;// coefficient of collar friction
N=24;// rpm
pb=6;// N/mm.sq.
tau_s=30;// MPa
tau_n=30;// MPa

dm=d-p/2;// mm
dc=d-p;// mm
t=p/2;// mm
l=2*p;//mm
alfa=atand(l/%pi/dm);// degree
fi=atand(mu);// degree
Tf=W*10**3*dm/2*tand(alfa+fi);// N.mm
Tc=mu_c*W*10**3/4*(D3+D4);// N.mm
T=Tf+Tc;// N.mm
printf('\n (i) Torque required to rotate the screw = %.f N.mm',T)

printf('\n (ii) Stresses induced in screw - ')
sigma_c=4*W*10**3/(%pi*dc**2);// N/mm.sq.
printf('\n Direct compressive stress = %.2f N/mm.sq',sigma_c)
tau=16*T/(%pi*dc**3);// N/mm.sq.
printf('\n Tortional shear stress = %.2f N/mm.sq',tau)
tau_max=sqrt((sigma_c/2)**2+tau**2);// MPa 
printf('\n Maximum shear stress = %.2f MPa < %.f MPa',tau_max,tau_s)
printf('\n Hence design is safe.')
n=W*10**3/(%pi*dm*t*pb);// no. of threads
n=ceil(n);// rounding
h=n*p;//mm
printf('\n (iii) Height of nut = %.f mm',h)
