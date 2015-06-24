clc
clear 
//Input data 
m=5;//Mass of water in kg 
t=100;//The temperature of water in degree centigrade 
l=540;//Latent heat of water at 100 degree centigrade in cal/g 

//Calculations 
T=t+273;//The temperature of water in K 
M=m*1000;//Mass of water in g 
H=M*l;//Heat absorbed by 5 kg of water at 100 degree centigrade when it is converted into steam at 100 degree centigrade in cal 
S=H/T;//The gain in entropy in cal/K 

//Output 
printf('The gain in entropy is  %3.0f cal/K ',S)
