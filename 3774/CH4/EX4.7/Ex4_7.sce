// exa 4.7 Pg 110
clc;clear;close;

// Given Data
Sut=600;//MPa
Syt=380;//MPa
q=0.9;// sensitivity factor
R=90/100;// reliability
n=2;// factor of safety
Pmin=-100;// N
Pmax=200;// N
l=150;// mm

Se_dash = 0.5*Sut;// MPa
// for cold drawn steel
ka=0.76;// surface finish factor
kb=0.85;// size factor (assuming t<50 mm)
kc=0.897;// reliability factor
kd=1;// temperature factor
ke=1;// load factor

Kt=1.4;// under bending

Kf=1+q*(Kt-1);// fatigue strength factor
kf=1/Kf ;// fatigue strength reduction factor
Se=ka*kb*kc*kd*ke*kf*Se_dash;// MPa( Endurance limit)
Mmax=Pmax*l;// N.mm
Mmin=Pmin*l;// N.mm
Mm=(Mmax+Mmin)/2;// N.mm
Ma=(Mmax-Mmin)/2;// N.mm
theta=atand(Ma/Mm);// degree

//equation of Goodman - sigma_m/Sut+sigma_a/Se=1
//here sigma_a/sigma_m=3
sigma_m=1/(1/Sut+3/Se);//MPa
sigma_a=3*sigma_m;// MPa

sigma_da=sigma_a/n;// MPa
//sigma_da=32*Ma/%pi/d**3
d=(32*Ma/%pi/sigma_da)**(1/3);// mm 
printf('\n diameter d at fillet cross section = %.f mm',d)
