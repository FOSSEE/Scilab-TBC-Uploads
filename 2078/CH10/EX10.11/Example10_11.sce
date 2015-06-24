//Exa 10.11
clc;
clear;
close;
//Given data :
L=200;//m
h=10;//m
D=2;//cm
wc=2.3;//kg/m
Pw=57.5;//kg/m^2(wind pressure)
SF=4;//safety factor
stress=4220;//kg/cm^2
w_w=Pw*D*10^-2;//kg
wr=sqrt(wc^2+w_w^2);//kg
f=stress/SF;//kg/cm^2
T=f*%pi/4*D^2;//kg
x=L/2-T*h/(wr*L);//m
S1=wr*x^2/2/T;//max sag in air
disp(S1,"Slant sag(m)");
Sdash=wc*x^2/2/T;//vertical sag
disp(Sdash,"Vertical Sag(meter)");
