//Example 17_16
clc();
clear;
//To findout how large a a resistance must the recording device must have
r1=10000         //Units in Ohms
percent=1           //Units in Percentage 
vo=1/(r1*(percent*100))       //Units In terms of Ro
Ro=1/vo         //Units in Ohms
printf("The resistance of the recording device is=%d Ohms",Ro)
