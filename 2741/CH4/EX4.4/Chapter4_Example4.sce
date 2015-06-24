clc
clear
//Input data 
m=100;//Let the mass of water in gms 
t=15;//Time taken for an electric kettle to heat a certain quantity of water from 0 to 100 degree centigrade in minutes 
T=80;//Time taken to turn all the water at 100 degree centigrade into steam in minutes 
Lw=100;//Latent heat of fusion of water in cals per gram 

//Calculations 
h1=m*Lw;//Heat required to raise its temperature from 0 to 100 degree centigrade in cals 
h2=h1;//Heat produced by electric kettle in 15 minutes in cals 
h3=h2/15;//Heat produced by electric kettle in 1 minute in cals 
h4=h3*80;//Heat produced by electric kettle in 80 minutes in cals 
L=h4/m;//Latent heat of steam in cal/g

//Output
printf('The latent heat of steam is L = %3.2f cal/g ',L)
