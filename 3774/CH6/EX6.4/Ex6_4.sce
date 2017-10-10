// exa 6.4 Pg 171
clc;clear;close;

// Given Data
Sut=700;// MPa
Syt=460;// Mpa
F1BYF2=3;// ratio of tensions
dg=300;// mm
dp=400;// mm
P=25;// kW
N=600;// rpm
alfa=20;// degree
Km=1.5;// fatigue factor
Kt=1.5;// shock factor

tau_d1=0.30*Syt;// MPa
tau_d2=0.18*Sut;// MPa
tau_d=min(tau_d1, tau_d2);// MPa (taking minimum value)
tau_d=0.75*tau_d;//MPa (Accounting keyway effect)

// Pulley D
// P= 2*%pi*N*T/60
T=P/(2*%pi*N/(60*1000));// N.m
// (F1-F2)*dp/2=T
SUB_F1F2 = T*2/dp;// N (where SUB_F1F2 = F1-F2)
F2 = SUB_F1F2/(F1BYF2-1) ;// N (putting value of ratio)
F1=F1BYF2*F2;// N
F=F1+F2;// N 
// Gear B
Ft=T*2/dg;// N
Fr=Ft*tand(alfa);// N

// Bearing Reactions

//Vertical forces
//RA*2*dg+Fr*dg=F*dg;
RA=(F*dg-Fr*dg)/(2*dg);// N (downwards)
RC=RA+Fr+F;// N (upwards)
MA=0;MB_v=-RA*dg;// N.mm
MC=-F*dg;// N.mm
//Horizontal forces
MB_h=Ft*2*dg/4;// N.mm
//Resultant B.M at B
MB=sqrt(MB_v**2+MB_h**2);// N.mm
Mmax=MC;//N.mm
T=T*1000;// N.mm
// d**3=16/%pi/tau_d*sqrt((Km*M)**2+(Kt*T)**2)
d=(16/%pi/tau_d*sqrt((Km*Mmax*1000)**2+(Kt*T)**2))**(1/3)
printf('shaft diameter(using ASME Code) = %.1f mm. Use diameter = %.f mm.',d,d)
