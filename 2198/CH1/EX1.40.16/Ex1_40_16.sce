//Ex 1.40.16
clc;clear;close;
format('v',9);

//Given : 
h=6.626*10^-34;//J-s
lambda=5490;//Angstrum
c=3*10^8;//m/s(speed of light)
f=c/(lambda*10^-10);//Hz
E=(h/1.6/10^-19)*f;//eV
disp(E,"Energy band gap(eV) : ");
