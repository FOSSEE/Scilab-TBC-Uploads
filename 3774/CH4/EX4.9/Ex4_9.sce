// exa 4.9 Pg 113
clc;clear;close;

// Given Data
Sut=860;//MPa
Syt=690;//MPa
Pmin=60;// N
Pmax=120;// N
R=50/100;// reliability
l=500;//mm
d=10;//mm
Se_dash = 0.5*Sut;// MPa
// for machines surface
ka=0.70;// surface finish factor
kb=0.85;// size factor (assuming t<50 mm)
kc=1;// reliability factor
kd=1;// temperature factor
ke=1;// load factor

Se=ka*kb*kc*kd*ke*Se_dash;// MPa( Endurance limit)
Mmax=Pmax*l;// N.mm
Mmin=Pmin*l;// N.mm
Mm=(Mmax+Mmin)/2;// N.mm
Ma=(Mmax-Mmin)/2;// N.mm
Sm=32*Mm/%pi/d**3;//MPa
sigma_m=Sm;//MPa
Sa=32*Ma/%pi/d**3;//MPa
sigma_a=Sa;//MPa
Sf=Sa*Sut/(Sut-Sm);//MPa

//calculating section
OB=6;//unit ref. o at 3
BE=OB-3;//unit
OC=Sf;// MPa
AE=log10(0.9*Sut)-log10(Se);//MPa
AC=log10(0.9*Sut)-log10(Sf);//MPa
CD=BE*AC/AE;//
//log10(N)=3+CD
N=10**(3+CD);// cycle
printf('\n life of the spring, N = %.f cycles',N)
//Note : answer in the textbook is wrong.
