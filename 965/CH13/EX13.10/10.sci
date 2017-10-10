clc;
clear all;
disp("Mass transfer coefficient")
U=6.2;// m/s
d=35/1000;// m
v=15.5*10^(-6);//m^2/s
D=0.82*10^(-5);//m^2/s
Sc=v/D;// Schmidt No.
Re=U*d/v;// Reynolds No.
Sh=0.023*((Re)^0.83)*(Sc)^0.44;
hm=Sh*D/d;// m/s
disp("m/s",hm,"mass transfer coefficient = ")
