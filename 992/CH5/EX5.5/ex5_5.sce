
//Exa:5.5
clc;
clear;
close;
//Given:
Fmx=107.218;//in MHz
Fmn=107.196;//in MHz
fm=4;//in Khz
swing=Fmx-Fmn;//in MHz
fd=swing/2;
fc=Fmx-fd;
m=(fd*10^3)/fm;
printf("\n\t carrer swing = %f MHz",swing);
printf("\n frequency deviation = %f KHz",fd*10^3);
printf("\n career frequency = %f",fc);
printf("\n modulation index = %f",m);
