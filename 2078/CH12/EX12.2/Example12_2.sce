//Exa 12.2
clc;
clear;
close;
format('v',5);
//Given data :
V=132*1000;//V
f=50;//Hz
r=10/1000;//m
d1=4;//m
d2=4;//m
d3=d1+d2;//m
epsilon_o=8.854*10^-12;//constant
l_tl=192*1000;//length of transmission line in m
C=2*%pi*epsilon_o/log((d1*d2*d3)^(1/3)/r)*l_tl;//in Farad
L=1/3/(2*%pi*f)^2/C;//H
disp(L,"Necessary Inductance of peterson coil in H : ");
VP=V/sqrt(3);//V
IL=VP/(2*%pi*f)/L;//A
Rating=VP*IL/1000;//kVA
disp(Rating/1000,"Rating of supressor coil in MVA :");
