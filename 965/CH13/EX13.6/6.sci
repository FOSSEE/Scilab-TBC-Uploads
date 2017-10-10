clc;
clear all;
disp("molar concentration & flux")
S=0.00145;// kg mole/m^3-bar
p1=2.4;//bar
p2=1;//bar
L=0.3/1000;//m
D=8.6*10^(-8);// m^2/s
Ch1=S*p1;// kg mole/m^3
Ch2=S*p2;// kg mole/m^3
disp("kg mole/m^3", Ch1,"Molar concentration of hydrogen Ch1 =")
disp("kg mole/m^3", Ch2,"Molar concentration of hydrogen Ch2 =")
Nh=D*(Ch1-Ch2)/L;
disp("kg mole/m^2*s", Nh,"Molar diffusion flux of hydrogen Nh =  *")








