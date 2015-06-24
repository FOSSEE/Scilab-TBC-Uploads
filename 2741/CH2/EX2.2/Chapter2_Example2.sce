clc
clear
//Input data
L=500;//The length of a steel rod in cm
t=40;//The increase in temperature in degree centigrade 
y=2*10^12;//The youngs modulus of elasticity of steel in dynes/cm^2
e=12*10^-6;//The coefficient of linear expansion of steel in per degree centigrade 

//Calculations 
S=y*e*t;//The stress in the rod in dynes/cm^2

//Output
printf('The stress in the rod is %3g dynes/cm^2',S)
