//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.11
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

p=25*10^3;       //power rating in w
E=230;           //generated voltage in v
N=1200;          //speed in rpm
Ra=0.12;           //armature resistance in ohm
Rf=100;          //field resistance in ohm
Pme=300;          //machanical loss in W
pml=200;        //magnetic loss in w
At1=2500;        //ampere turns per pole
At2=1500;          //ampere turns per pole
va=200;          //voltage in V
nf=1000;        //number of turns in field winding

Ia=p/va;
V=E-Ia*Ra;
Pout=V*Ia;
Pa=Ia^2*Ra;
If=At1/nf;
Pf=If^2*Rf;
pin=Pout+Pa+Pf+Pme+pml;
Eff=Pout/pin;
N1=(N*2*3.14)/60;      //speed in rad/s
Tin=(pin-Pf)/N1;
Vreg=(E-V)*100/V;

printf('armature terminal voltage is %f V\n',V)
printf('Effeciency is %f\n',Eff)
printf('Input torque is %f Nm\n',Tin)
printf('Voltage regulation is %f in percentage',Vreg)
