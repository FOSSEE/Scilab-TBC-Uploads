// exa 6.5 Pg 174
clc;clear;close;

// Given Data
L=1000;// mm
alfa=20;// degree
dg=500;// mm
L1=250;// mm
L2=300;// mm
dp=600;// mm
Wp=2000;// N
F1=2.5*1000;// N
F1BYF2=3;// ratio of tensions
tau_d=42;// MPa

F2=F1/F1BYF2;// N
T=(F1-F2)*dp/2;// N.mm
Ftg=2*T/dg;// N
Frg=Ftg*tand(alfa);// N
F=F1+F2;// N

// Vertical Loads
RAV=(Ftg*(L1+dg)+Wp*L2)/L;// N
RBV=Ftg+Wp-RAV;// N
MCV=RAV*L1;//N.mm
MDV=RBV*L2;// N.mm
// Horizontal Loads
RAH=(Frg*(L1+dg)+F*L2)/L;//N
RBH=Frg+F-RAH;// N
MCH=RAH*L1;// N.mm
MDH=RBH*L2;// N.mm
MD=sqrt(MDV**2+MDH**2);// N.mm
Mmax=MD;//N.mm
Te=MCV+MDV;// N.mm
// d**3 = 16*Te/%pi/tau_d
d = (16*Te/%pi/tau_d)**(1/3);//mm
printf('shaft diameter = %.1f mm.',d)
