clc
clear
//Input data
l=1;//The thickness of the crystal in cm
w=5890d-8;//The wavelength of light used in cm
t2=50;//The final temperature of the crystal in degree centigrade 
t1=20;//The initial temperature of the crystal in degree centigrade
p=14;//The number of fringes that crossed the field of view

//Calculations 
t=t2-t1;//The temperature difference in degree centigrade
a=(p*w)/(2*l*t);//The coefficient of linear expansion of the crystal in per degree centigrade

//output
printf('The coefficient of linear expansion of the crystal is %3.4g /degree centigrade',a)

