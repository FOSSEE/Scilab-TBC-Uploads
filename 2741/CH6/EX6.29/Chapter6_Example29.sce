clc
clear 
//Input data 
l=80;//Latent heat of ice in cal/g 
m=10;//Mass of ice in g 
T=273;//The temperature of ice in K 

//Calculations 
H=m*l;//Heat absorbed by 10 g of ice at 273 K when it is converted into water at 273 K in cal 
S=H/T;//The gain in entropy in cal/K 

//Output 
printf('The gain in entropy is  %3.2f cal/K',S)
