clc;
clear;
format('e',11);
vin=2*10^7;
q=3*10^-6;
rin=[1 0 0];
mod_rin=sqrt(rin(1)^2+rin(2)^2+rin(3)^2);
Vin=q/(4*3.14*8.85*10^-12*mod_rin);         //potential at[1 0 0] due to point charge.
Pin=-1.6*10^-19*Vin;                         //initial potential energy.
disp("Hence Etin must be equal to zero","When the electron reaches at infinite distance Pf=Kf=0.");
vin=sqrt(-Pin*2/(9.1094*10^-31));                  //considering me=9.1094*10^-31kg.
disp(vin,"vin(in meter/sec)=");
disp("Beyond this velocity the electron escapes.");
