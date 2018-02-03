//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 5.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

Q=20;         //power in KVA
v=220;        //voltage in v
pf=0.707;      //lagging power factor
Ra=0.5;        //armature resistance in ohms
xd=4;         //d-axis reactance in ohms
xq=2;         //q-axis reactance in ohms

vt=v/3^(1/2);
Ia=Q*10^3/(3^(1/2)*v);
phi=acosd(pf);
td=(Ia*xq*cosd(phi))/(vt+Ia*xq*sind(phi));
d=atand(td);
Id=Ia*sind(phi+d);
v1=Id*xd;
v0=vt*cosd(d)+Id*xd;
reg=(v0-vt)*100/vt;

printf('The percentage regulation is %f in percentage',reg)


