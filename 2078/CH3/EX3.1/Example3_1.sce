//Exa 3.1
clc;
clear;
close;
//Given data :
P=30*10^6;//W
pf=0.8;//lagging power factor
VL=132*1000;//V
l=120*1000;//m
Eta=90/100;//Efficiency
rho_Cu=1.78*10^-8;//ohm-m
D_Cu=8.9*10^3;//kg/m^3
rho_Al=2.6*10^-8;//ohm-m
D_Al=2*10^3;//kg/m^3
IL=P/(sqrt(3)*VL*pf);//A
//W=3*IL^2*rho*l/a=(1-Eta)*P
a_Cu=(3*IL^2*rho_Cu*l)/(1-Eta)/P;//m^2
V_Cu=3*a_Cu*l;//m^3
Wt_Cu=V_Cu*D_Cu;//kg
disp(Wt_Cu,"Weight of copper required(kg)");
a_Al=(3*IL^2*rho_Al*l)/(1-Eta)/P;//m^2
V_Al=3*a_Al*l;//m^3
Wt_Al=V_Al*D_Al;//kg
disp(Wt_Al,"Weight of Alluminium required(kg)");
//Answer in the textbook is not accurate.
