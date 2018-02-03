//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 5.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

Q=2500;          //power in KVA
v=6600;          //3phase voltage in v
pf=-0.8;                 //power factor
Xs=10.4;                //syncronous reactance  in ohm
ra=0.071;             //armature resistance in ohm


th=acosd(pf);
vt=v/(3^(1/2));
Ia=Q*10^3/((3^(1/2))*v);
t=cosd(th)-%i*sind(th);
Iad=Ia*t;
v1=Iad*Xs;
v0=vt+%i*v1;
Reg=(abs(v0)-vt)/vt*100;

printf('The regulation is %f ',Reg)
