//example 7.8
clc
clear
//Ra = input('Enter the value of the resistance RA in Kohms :');
//pw =input('Enter the value of required pulse width in millisecndseconds :');
Ra=10//taking given values 
pw=10
C = pw/(1.1*Ra); //substituting in the equation 
printf('The required value of capacitance is %f microfarads',C);//displaying result