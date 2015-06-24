//example 7.7 
clc
clear
//Ra = input('Enter the value of the resistance RA in Kohms :');
//C =input('Enter the value of the Capacitance C in micro farads :');
Ra=10//taking given values 
C=0.1
pw = 1.1*Ra*C //substituting in the equation 
printf('pulse width is %f milliseconds',pw);//displaying result
