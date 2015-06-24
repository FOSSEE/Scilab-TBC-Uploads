//Exa 1.10
clc;
clear;
close
// given data
La=3*10^-2;// in meter
Aa=1;// in m^2
ka=150;// in W/m-K

Lb=8*10^-2;// in meter
Ab=0.5;// in m^2
kb=30;// in W/m-K

Lc=8*10^-2;// in meter
Ac=0.5;// in m^2
kc=65;// in W/m-K

Ld=5*10^-2;// in meter
Ad=1;// in m^2
kd=50;// in W/m-K

T1=400;// in degree C
T2=60;// in degree C

Ra=La/(ka*Aa);
Rb=Lb/(kb*Ab);
Rc=Lc/(kc*Ac);
Rd=Ld/(kd*Ad);
//The equivalent resistance for Rb and Rc
Re=Rb*Rc/(Rb+Rc);
//Total Resistance
sigmaR=Ra+Re+Rd;
// heat transfer rate per square meter
q=(T1-T2)/sigmaR;
disp("Heat transfer rate per square meter is : "+string(q)+" Watt");
