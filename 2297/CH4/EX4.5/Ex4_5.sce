// Example 4.5;efficiency and load for maximum efficiency
clc;
close;
clear;
format('v',5)
// given 
cl=125;//copper losses
fcl=2^2*cl;//full load copper losses
il=457;//iron losses
pf=0.8;//power factor
kba=30;//loss
disp("part (a)")
fle=((kba*pf)/((kba*pf)+(fcl+il)*10^-3))*100;//full load efficiency  in %
disp(fle,"full load efficiency at 0.8 pf is,(%)=")
lme=kba*sqrt(il/fcl);//variable
pfl=(lme/kba)*100;//percentage of full load on which efficiency will be maximum 
disp("part (b)")
disp(pfl,"percentage of full load on which efficiency will be maximum is,(%)=")
