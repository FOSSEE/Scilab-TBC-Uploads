//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 4.4
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

n1=24;        //no of turns per phase
m=3;   //no of phases
P=4;//no of poles
s=36;                 //no of slots
t=9;                   //pole pitch
B=8;              //coil span

q=s/(m*P);     //no of slots per poles per phase
a=180/(m*q);     //slot angle
kd=sind(q*a/2)/(q*sind(a/2));  //distribution factor
kp=sin(%pi*B/(2*t));
kw=kd*kp;
//assume for rotor we have kw2=1;n2=2;m2=7
kw2=1;n2=2;m2=7;

R2=((m/m2)*(kw*n1/(kw2*n2))^2);
disp(R2,'the required factor is')

