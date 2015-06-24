clc
clear
//Input data
L=800;//The length of the wire in cm
r=0.2;//The radius of the wire in cm
t=10;//The temperature fall in degree centigrade 
a=12*10^-6;//The coefficient of linear expansion of steel wire in per degree centigrade 
y=2*10^12;//The youngs modulus of elasticity of steel in dynes/cm^2
pi=(22/7);//Mathematical constant pi

//Calculations 
I=y*a*t*pi*r^2;//The increase in tension in dynes 

//Output
printf('The increase in tension is %3g dynes',I)
