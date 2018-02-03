//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 5.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

I=50;          //current in A
pf=0.707;      //power factor
v=220;          //voltage in v
xs=1.27;         //synchronous reactance/phase in ohm
pm=33*10^3;          //power developed by the motor in w
pa=30;             //power angle
phia=30;            //phase angle

v1=220/3^(1/2);
pd=(pm*10^3)/3;
v0=(pd*xs)/(v1*sin(pa));
Ia=v1/xs;
kvar=3^(1/2)*v*Ia*sind(phia)/10^3;
Il=I-Ia;
Phi=atan(.122);
Pfn=cos(Phi);

printf('KVAR is %f\n',kvar)
printf('power factor of the motor is %f',Pfn)
