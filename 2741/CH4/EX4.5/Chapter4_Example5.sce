clc
clear
//Input data
m=50;//Mass of water in gms 
t1=15;//Initial temperature in degree centigrade 
t2=-20;//Final temperature in degree centigrade 
Sp=0.5;//Specific heat of Ice in cal/g-K 
Li=80;//Latent heat of fusion of Ice in cals per gram 

//Calculations 
h1=m*1*t1;//Heat removed in cooling water from 15 to 0 degree centigrade in cal 
h2=m*Li;//Heat removed in converting water into Ice at 0 degree centigrade in cal 
h3=m*Sp*-t2;//Heat removed in cooling ice from 0 to -20 degree centigrade in cal 
H=h1+h2+h3;//Total heat removed in one hour in cal 
H1=H/60;//Heat removed per minute in cal/minute 

//Output 
printf('The Quantity of heat removed per minute is %3.1f cal/minute ',H1)
