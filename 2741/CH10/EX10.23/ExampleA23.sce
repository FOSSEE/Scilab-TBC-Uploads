clc
clear
//Page number 480
//input data 
m=0.0273;//The given amount of ice in kg 
L=80;//The latent heat of fusion of ice in cal/gram 
T=273;//The temperature of ice in K 

//Calculations 
L1=L*1000;//The latent heat of fusion of ice in cal/kg 
S=(m*L1*4.2)/T;//The change in entropy in J/K

//Output
printf('The change in entropy is %3.1f J/K',S)
