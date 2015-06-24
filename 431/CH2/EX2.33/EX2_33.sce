//Calculate the appox. efficiency of each machine
//Chapter 2
//Example 2.33
//page 150
clear;
clc; 
disp("Example 2.33")
V=440;....................//voltage in volts
P=200*1000;...............//power in watt
Ig=P/V;..............//rated current of each machine in amperes
//assume losses to be equal
I=90;..............//addition currnet supply
Effi=sqrt(Ig/(Ig+I))*100;
printf("approximate efficiency=%fpercent",Effi)