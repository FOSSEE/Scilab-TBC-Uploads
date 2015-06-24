clc
clear
//Input data
R0=5.5;//The resistance of a platinum wire at 0 degree centigrade in ohms
R100=7.5;//The resistance of a platinum wire at 100 degree centigrade in ohms
R444=14.5;//The resistance of a platinum wire at 444.5 degree centigrade in ohms

//Calculations 
b=((900-(2*444.6))/(5.5*444.6*100*344.6));//The value of beta in per degree centigrade square 
a=(2/(5.5*100))-(100*(b));//The value of alpha in per degree centigrade 

//Output 
printf('The values are b = %3.4g /degree centigrade square \n   and a = %3g /degree centigrade ',b,a)
