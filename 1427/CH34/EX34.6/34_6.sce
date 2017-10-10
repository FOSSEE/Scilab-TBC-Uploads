//ques-34.6
//Calculating quantum yield of a reaction
clc
n=0.002;//moles of X reacted
t=20*60+4;//time (in s)
N=2*10^6;//photons of radiation absorbed per second
QY=(n*6.02*10^23)/(N*t);
printf("The quantum yield required is %.0f*10^11.",QY*10^-11);
