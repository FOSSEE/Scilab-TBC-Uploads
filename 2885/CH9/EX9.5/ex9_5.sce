//Calculate the percentage increase in output power
clear;
clc;
//soltion
//given

D=0.2;//harmonic distortion
P=(1+D^2);//Total power increase

//percent increase= (Pi*(1+D^2)-Pi)*100/Pi;
//taking out and cancelling Pi
PI=(P-1)*100;
printf("The percentage increase in output power= %.0f percent",PI);
