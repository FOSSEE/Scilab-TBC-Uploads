//example 15.10
clc;
clear;
//v = input('Enter the reference voltage in volts :');
//an = input('Enter the analog input voltage in volts :');
v=2;  // taking given input 
an=1.25;
count = 2000*an/v ; 
count = round(count); 
printf('The ccount held in the counter for given analog input will be : %f',count);
d= an/v;
printf('\nThe duty cycle is : %f',d);
