//Exa 10.9
clc;
clear;
close;
//Given data :
L=250;//m
D=1.42;//cm
wc=1.09;//kg/m
Pw=37.8;//kg/m^2(Wind pressure)
r=1.25;//cm
Lis=1.43;//m(insulator string length)
Clearance=7.62;//m
rho_i=913.5;//kg/m^3(density of ice)
stress=1050;//kg/cm^2
T=stress*%pi/4*D^2;//kg
wi=rho_i*%pi*r*10^-2*(D+r)*10^-2;//kg
w_w=Pw*(D+2*r)*10^-2;//kg
wr=sqrt((wc+wi)^2+w_w^2);//kg(Resultant force per m length of conductor)
Smax=wr*L^2/8/T;//max sag in air
disp(Smax,"Sag in inclined direction(meter)");
Sdash=Smax*(wc+wi)/wr;//max sag in air
disp(Sdash,"Sag in vertical direction(meter)");
h=Clearance+Sdash+Lis;//m
disp(h,"Height of lowest cross arm(m)");
