//chapter-8 page 345 example 8.11
//==============================================================================
clc;
clear;

//For a four cavity Klystron
V0=20000;//Beam voltage in V
I=2;//Beam current in A
f=9*10^9;//Operation frequency in Hz
p0=10^(-6);//dc electron charge density in C/m^3
p=10^(-8);//RF charge density in C/m^3
V=10^5;//Velocity perturbations in m/sec
e0=8.854*10^(-12);//Permittivity of free space in F/m
R=0.5;

//CALCULATION
v0=(0.593*10^6*sqrt(V0))/1000;//The dc electron velocity in Km/sec
w=2*(%pi)*f;//angular frequency in rad/sec
v=v0*1000;
c=(w/v);//The dc Phase Constant
wp=(sqrt(1.759*10^11*(p0/e0)))/10^8;//The Plasma Frequency in 10^8 rad/sec
wp1=wp*10^8;
wq=(R*wp1)/10^8;//The Reduced Plasma Frequency in 10^8 rad/sec
J0=p0*v;//The dc beam current density in A/sqm
J=(p*v)-(p0*V);//The instantaneous beam current density in A/sqm

//OUTPUT
mprintf('\nThe dc electron velocity is v0=%4.2f Km/sec \nThe dc Phase Constant is c=%3.2f rad/sec\nThe Plasma Frequency is wp=%1.2f *10^8 rad/sec \nThe Reduced Plasma Frequency is wq=%1.3f *10^8 rad/sec \nThe dc beam current density is J0=%2.2f A/sqm \nThe instantaneous beam current density is J=%1.4f A/sqm',v0,c,wp,wq,J0,J);

//=========================END OF PROGRAM===============================
