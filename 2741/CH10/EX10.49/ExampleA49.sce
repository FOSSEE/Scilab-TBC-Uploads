clc
clear
//Page number 492
//Input data 
s=1;//The specific heat of water in k cal kg C 
m=1;//The mass of ice in kg
H=80;//The latent heat of ice in kcal/kg 
H1=540;//The latent heat of steam in kcal/kg 
T=273;//The temperature of the ice in K 
T1=373;//The temperature of water at 100 degree centigrade in K 

//Calculations 
S1=H/T;//The increase in entropy when 1 kg of ice at 273 K is converted into water at 273 K in kcal/K 
S2=m*s*log(T1/T);//The increase in entropy when 1 kg of water at 273 K is converted into water at 373 K in kcal/K 
S3=H1/T1;//The increase in entropy when 1 kg of water at 373 K is converted into steam at 373 K in kcal/K 
S=S1+S2+S3;//The total increase in entropy in kcal/K 

//Output 
printf('The total increase in entropy is  %3.3f kcal/K ',S)

