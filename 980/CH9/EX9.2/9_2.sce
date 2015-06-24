clc;
clear;
format('e',11);
v=4*10^4;
e=-1.6*10^-19;
Me=9.1*10^-31;              //Me=mass of electron.
B=0.4*10^-4;
Wc=-e*B/Me;                 //Wc=angular frequency.
f=Wc/(2*3.14);
R=v/Wc;
disp(f,"The frequency of the electron(in Hz)=");
disp(R,"The redius of the circle,R(in meter)=");
