//Exa 2.1
clc;
clear;
close;
format('v',7);

//Given Data : 
mc=10;//Kg
Cpc=0.4;//KJ/KgK
Cpw=4.187;//KJ/KgK(Specific heat of water)
tc=90;//degree_centigrade
Vw=0.35;//m^3
tw=30;//degree_centigrade
density_water=1000;//Kg/m^3
mw=Vw*density_water;//Kg
//mc*Cpc*(tc-t)=mw*Cpw*(t-tw)
t=(mw*Cpw*tw+mc*Cpc*tc)/(mw*Cpw+mc*Cpc);//degree_centigrade
disp(t,"Equillibrium temperature in degree_centigrade : ");
