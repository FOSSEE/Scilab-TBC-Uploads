clc
clear
disp('example 4 8')
p=500 //load
pf=0.8//power factor
t=400 //tariff
md=100 //maximum demand tariff
ccb=600 //cost of capacitor bank
id=0.11//interest and deprecistion
sd=ccb*id/t//sin(ph2)
d2=asind(sd)
pf2=cosd(d2)
kva=p*(tand(acosd(pf))-tand(d2))
printf(" the most economic power factor %.3f lagging \n kvar requirement %.2fkVAR",pf2,kva)