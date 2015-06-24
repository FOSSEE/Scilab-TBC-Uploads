clc
clear
//Page number 502
//Input data 
x1=20;//The initial thickness of the layer in cm 
x2=30;//The final thickness of the layer in cm 
t1=-15;//The temperature of the surroundings in degree centigrade 
L=80;//The latent heat of ice in cal/gram 
d=0.9;//The given density of ice in g/cm^3
K=0.005;//The coefficient of thermal conductivity in C.G.S units 

//Calculations 
t=((d*L)/(2*K*t1))*(x1^2-x2^2);//The time taken in sec 

//Output 
printf('The time taken for a layer of ice to increase the thickness is  %3.2g sec ',t)

