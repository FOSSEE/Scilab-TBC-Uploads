clc;
clear;
format('v',11);
vin=2*10^7;
q=3*10^-6;
rin=[1 0 0];
mod_rin=sqrt(rin(1)^2+rin(2)^2+rin(3)^2);
Vin=q/(4*3.14*8.85*10^-12*mod_rin);         //potential at[1 0 0] due to point charge.
Pin=-1.6*10^-19*Vin;                         //initial potential energy.
Kin=(9.1094*10^-31*vin^2)/2;                   //initial kinetic energy considering me=9.1094*10^-31kg.
Etin=Pin+Kin;                                  //initial total energy'.
disp("As electron moves it slows down due to attraction to the charge at the origine and ultimately comes to rest.");
disp("computing rf","hence Etin=Etf=Pf","Kf=0","final kinetic enegy is zero");
Pf=Etin;
rf=-1.6*10^-19*q/(4*3.14*8.85*10^-12*Pf);
disp(rf,"rf(in meter)=");
disp("from this position the electron reverses motion and begins moving towards the charge at the origin.");
