//Exa 10.6
clc;
clear;
close;
//Given data :
L=180;//m
D=1.27;//cm
Pw=33.7;//kg/m^2(Wind pressure)
r=1.25;//cm
wc=1.13;//kg/cm^2
U_stress=4220;//kg/cm^2
SF=5;//factor of safety
W_stress=U_stress/SF;//kg/cm^2
T=W_stress*%pi/4*D^2;//kg
S=wc*L^2/8/T;//msag in air
disp(S,"Sag in still air(meter)");
w1=2890.3*r*10^-2*(D+r)*10^-2;//kg/m
w_w=Pw*(D+2*r)*10^-2;//kg
wr=sqrt((wc+w1)^2+w_w^2);//kg
Smax=wr*L^2/8/T;//msag in air
disp(Smax,"Maximum Sag(meter)");
