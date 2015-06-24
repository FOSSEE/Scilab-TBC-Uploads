//Determine molecular weight of teflon
//Ex:17.2
clc;
clear;
close;
DOP=10000;
mc=12;//mol wt of carbon
mf=19;;//mol wt of fluorine
m=(2*mc)+(4*mf);//mol wt of teflon monomer
mp=DOP*m;
disp(mp,"Molecualr weight of Teflon polymer = ");
mh=1;;//mol wt of hydrogen
m1=(2*mc)+(4*mh);//mol wt of polyethylene
//for same DOP
x=m/m1;//ratio of molecular weights
disp(x,"Ratio of molecualr weights of Teflon and Polyethylene = ");