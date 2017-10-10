//Exa:3.4.1
clc;
clear;
close;
B=1;//in tesla
B1=1.1;//in Tesla
B2=1.45;//in Tesla
H1=1000;//in Ampere/meter
H2=2500;//in Ampere/meter
b=((H1*B2)-(H2*B2))/((H1*H2*B1)-(H1*H2*B2));
disp(b,'b=');
a=(B1/H1)+(b*B1);
disp(a,'a=');
H=B/(a-(b*B));
u_r=B/(4*%pi*H*10^-7);
disp(u_r,'Relative Permeablity=')