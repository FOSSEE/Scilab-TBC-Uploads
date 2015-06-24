clc
clear
//Input data 
m=1000;//Mass of Ice in gms 
Sp=0.5;//Specific heat of Ice in cal/g-K 
t1=-10;//Initial temperature of Ice in degree centigrade 
t2=0;//The final temperature of Ice in degree centigrade 
Li=80;//Latent heat of fusion of ice in cals per gram 
Ls=540;//Latent heat of fusion of steam in cals per gram 

//Calculations 
h1=m*-t1*Sp;//Heat required to raise the temperature of Ice in cals 
h2=m*Li;//Heat required to melt ice at 0 degree centigrade in cals 
h3=m*100;//Heat required to raise the temperature of water from 0 to 100 degree centigrade in cals 
h4=m*Ls;//Heat required to convert water into steam at 100 degree centigrade in cals 
T=h1+h2+h3+h4;//Total quantity of heat required in cals 

//Output 
printf('Total quantity of heat required is %3.0f cals ',T)
