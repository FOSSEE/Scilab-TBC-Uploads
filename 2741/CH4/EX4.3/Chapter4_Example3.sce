clc
clear
//Input data
m=100;//Mass of water in gms 
tw=40;//The temperature of water in degree centigrade 
mi=52;//Mass of Ice in gms 
Lw=100;//Latent heat of fusion of water in cals per gram 
Li=80;//Latent heat of fusion of Ice in cals per gram 

//Calculations 
h=Lw*tw;//Heat lost by water when its temperature falls from 40 to 0 degree centigrade in cals 
hi=mi*Li;//Heat gained by Ice in cals 
hg=h;//The amount of heat gained by Ice in cals 
ml=(hg/Li);//The amount of Ice melted in gms 
M=mi-ml;//The amount of ice remaining in gms 
W=m+(mi-M);//The amount of water in gms

//Output
printf('The remaining Ice is %3.0f g \n Hence the result will be %3.0f g of Ice and %3.0f g of water at 0 degree centigrade ',M,M,W)
