//example 24
clear
alpha1=0.98;
revcur=1*10^-6;//ampere
emicur=1*10^-3;//ampere
colcur=alpha1*emicur+revcur;
bascur=emicur-colcur;
disp("collector current   =   "+string((colcur))+"ampere");
disp("base current   =   "+string((bascur))+"ampere");


