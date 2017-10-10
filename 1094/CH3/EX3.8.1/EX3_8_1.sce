//EXA:3.8.1
clc;
clear;
close;
//Refers to figure 3.8.8
l_g=1*10^(-3) //length (in m)
phy_g=1.1*5*10^(-4) //(in mWb)
phy_l=0.1 //(in mWb)
phy=(phy_g)+(phy_l)
B_g=1.1 //flux density (in T)

H_g=(B_g)/u_0
F_g=(H_g)*l_g
//from B-H curve of figure 3.4.2
F_12=H_1*