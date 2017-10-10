// exa 8.11 Pg 236
clc;clear;close;

// Given Data
dv=100;//mm
C=5.5;// spring index
pi=1;// N/mm.sq.
p=1.075;// N/mm.sq.
del=6;// mm
tau_max=400;// N/mm.sq.
G=80;// kN/mm.sq.

Fi=(%pi/4)*dv**2*pi;// N (initial tension in spring)
printf('\n initial tension in spring = %.f N', Fi)
F=(%pi/4)*dv**2*p;// N (maximum tension in spring)
printf('\n maximum tension in spring = %.f N', F)
k=(F-Fi)/del;// N/mm (stiffness of spring)
printf('\n stiffness of spring = %.2f N/mm',k)
//Tmax=F*Dm/2 where Dm=5.5*d
Tmax_BY_d=F*5.5/2;// calculation
//Tmax=(%pi/16)*d**3*tau_max
d=sqrt(Tmax_BY_d/((%pi/16)*tau_max));// mm
printf('\n diameter of spring = %.2f mm. Use 18 mm.',d)
d=ceil(d);// mm (rounding)
Dm=5.5*d;//mm
printf('\n mean coil diameter = %.f mm',Dm)
Do=Dm+d;//mm
printf('\n outside coil diameter = %.f mm',Do)
Di=Dm-d;// mm
printf('\n initial coil diameter = %.f mm',Di)
n=G*10**3*d*del/8/(F-Fi)/C**3;// no. of turns
printf('\n no. of turns = %.f',n)
nt=n+1;// total no. of turns
printf('\n total no. of turns(for extension spring) = %.f',nt)
gi=1;// mm (initial gap)
lf=nt*d+(nt-1)*gi;// mm
printf('\n free length of spring = %.f mm',lf)
p=lf/(nt-1);//mm
printf('\n pitch of coils = %.2f mm',p)
