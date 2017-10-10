//ques-35.17
//Calculating frequency for a given transition in CO
clc
r=112.81;//bond length (in pm)
r_m=(12*16/1000)/((12+16)*6.23*10^23);//reduced mass (in kg)
B=(6.625*10^-34)/(8*%pi^2*r_m*(r*10^-12)^2*3*10^10);
printf("The frequency for the given transition in CO is %.2f /cm.",6*B);
