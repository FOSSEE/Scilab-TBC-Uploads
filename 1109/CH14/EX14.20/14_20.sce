clear;
clc;
fr=1*(10^6);C=0.04*(10^-12);C1=6*(10^-12);
fa=fr*(1+(C/(2*C1)));
printf("The second resonance frequency = %f MHz",round(fa*(10^-2))/10^4);
