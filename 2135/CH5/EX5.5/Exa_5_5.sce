//Exa 5.5
clc;
clear;
close;
format('v',6);

//Given Data :
P=1;//KW or KJ/s
Q=6;//MJ/hr
Q=Q*1000/3600;//KJ/s
T1=26+273;//Kelvin
T2=3+273;//Kelvin
COP=T1/(T1-T2);
W=Q/COP;//KJ/s or KW
disp(W,"Work required to pump heat in KJ/s or KW : ");
disp("As P>W, required condition can be maintained.")
