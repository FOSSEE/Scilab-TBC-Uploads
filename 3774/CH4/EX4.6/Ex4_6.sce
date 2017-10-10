// exa 4.6 Pg 108
clc;clear;close;

// Given Data
Sut=540;//MPa
N=10**4;// cycles
q=0.85;// sensitivity factor
R=90/100;// reliability
P=1500;// N
l=160;// mm

Se_dash = 0.5*Sut;// MPa
// for cold drawn steel
ka=0.79;// surface finish factor
kb=0.85;// size factor (assuming t<50 mm)
kc=0.897;// reliability factor
kd=1;// temperature factor
ke=1;// load factor

Kt=1.33;// under bending

Kf=1+q*(Kt-1);// fatigue strength factor
kf=1/Kf ;// fatigue strength reduction factor
Se=ka*kb*kc*kd*ke*kf*Se_dash;// MPa( Endurance limit)

of=4;// unit
ob=6;//unit
bf=ob-of;// unit
be=3;//unit

// calculating endurance section wise
OE=log10(Se);
OA=log10(0.9*Sut);
AE=OA-OE;
//log10_Sf=OD=OE+ED=OE+FC
log10_Sf=OE+(bf/be)*AE;
Sf=10**log10_Sf; // (MPa) Endurance

MB=P*l;// N.mm
// 32*MB/%pi/d**3 = Sf
d=(32*MB/%pi/Sf)**(1/3)
printf('\n diameter of beam %.f mm',d)
