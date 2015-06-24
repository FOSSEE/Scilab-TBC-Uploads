clc 
clear
//Input data
m=1;//Mass of steam in gms 
Ls=537;//Latent heat of fusion of steam in cal per gram 
mi=100;//mass of ice in gms 
Li=80;//Latent heat of fusion of ice in cal per gram 

//Calculations 
h1=m*Ls;//Heat given out by one gram of steam when converted from steam into water at 100 degree centigrade in cals 
h2=1*100;//Heat given out by one gram of water when cooled from 100 to 0 degree centigrade in cals 
h=h1+h2;//Total quantity of heat given out by one gram of steam in cals 
m=h/Li;//The amount of Ice melted in gms 

//Output 
printf('The amount of Ice melted is m = %3.2f gms ',m)
