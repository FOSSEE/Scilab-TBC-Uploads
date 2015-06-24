clc
clear
//Input data 
M=27;//The mass of the substance in g
t=100;//The temperature of the substance in degree centigrade 
a=3/100;//Area of cross section in cm^2 
l=10;//The length of the coloumn through which liquid moves in cm 
Li=80;//Latent heat of Ice in cals per gram 
V1=1000;//The volume of water in cm^3 
V2=1090;//The volume of Ice from the volume of water on freezing in cm^3 

//Calculations 
v=l*a;//Decrease in volume in cm^3
V=V2-V1;//The decrease in volume of Ice in cm^3 
Vi=V/1000;//The decrease in volume when one gram of ice melts in cm^3 
S=(Li*v)/(Vi*M*t);//Specific heat of the substance incal/g degree centigrade 

//Output
printf('The specific heat of the substance is %3.3f cal/g.degree centigrade ',S)
