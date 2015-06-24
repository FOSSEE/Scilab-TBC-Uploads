//Example 1.9: 
clc;
clear;
close;
//given data :
e=1.6*10^-19;// in V
Pp=10^-1;// p-type silicon in ohm-m
Pn=10^-1;// n-type silicon in ohm-m
mu_hsi=0.048;// holes mobilities in m^2/V-s
mu_esi=0.135;// electrons mobilities in m^2/V-s
nisi=1.5*10^16;//in m^-3
nesi=nisi;//
nhsi=nisi;//
mu_hge=0.19;// holes mobilities in m^2/V-s
mu_ege=0.39;// electrons mobilities in m^2/V-s
A=1*10^-4;//area in m^2
nige=2.4*10^19;//in m^-3
V=2;//in V
l=0.1;//in m
Isi= e*A*(V/l)*((nesi*mu_esi)+(nhsi*mu_hsi));//in A
format('e',8)
disp(Isi,"Total current for silicon is,(A)=")
//Current for silicon is calculated wrong in the textbook
nege=nige;//
nhge=nige;//
Ige= e*A*(V/l)*((nege*mu_ege)+(nhge*mu_hge));//in A
format('e',9)
disp(Ige,"Total current for germanium is,(A)=")

