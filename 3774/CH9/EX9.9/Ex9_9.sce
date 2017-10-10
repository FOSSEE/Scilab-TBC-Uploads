// exa 9.9 Pg 272

clc;clear;close;

// Given Data
d=70;// mm
mu=0.13;// coefficient of thread friction
mu_c=0.15;// coefficient of collar friction
Do=90;// mm
Di=26;// mm
L=450;// mm
// C-25 steel screw
sigma_t1=275;// MPa
sigma_c1=275;// MPa
tau1=137.5;// MPa
// Phosphor bronze nut
sigma_t2=100;// MPa
sigma_c2=90;// MPa
tau2=80;// MPa
pb=15;//MPa
n=2;// factor of safety
//screw
sigma_ts=137.5;// MPa
sigma_cs=137.5;// MPa
tau_s=68.75;// MPa
//Nut
sigma_tn=50;// MPa
sigma_cn=45;// MPa
tau_n=40;// MPa

p=10;// mm (for normal series square threads)
dc=d-p;//mm
dm=d-p/2;//mm
t=p/2;//mm
alfa=atand(p/%pi/dm);// degree
fi=atand(mu);// degree

K=dc/4;// mm
C=0.25;// spring index
sigma_y=275;// MPa
Ac=%pi/4*dc**2;//mm.sq.
Wcr=Ac*sigma_y*(1-(sigma_y/4/C/%pi**2/(200*10**3))*(L/K)**2);// N
printf('\n (a) Safe Capacity of press or critical load for the screw = %.f N',Wcr)

n=Wcr/(%pi*dm*t*pb);// no. of threads
n=ceil(n);// rounding 
h=n*p;// mm
printf('\n (b) Height of nut, h=%.f mm',h)

W=Wcr;// N
Tf=W*dm/2*tand(alfa+fi)/1000;// N.mm (Frictional torque)
Tc=mu_c*W/4*(Do+Di)/1000;// N.mm (Collar torque)
T=Tf+Tc;// N.mm
printf('\n (c) Necessary torsional moment or total torque = %.2f N.mm',T)
// Note - answer in the textbook is wrong.
