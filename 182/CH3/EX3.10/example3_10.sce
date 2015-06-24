//To find the sensitivity
//example 3-10 in page 54
clc;
//given data
Im=157e-6;// peak current=157 micro ampere
Vrms=100;// FSD rms voltage in volt
//calculation
Irms=0.707*Im;//FSD rms current
R=Vrms/Irms;// total circuit resistance
S=R/Vrms;//sensitivity
printf("sensitivity=%d K-ohm/volt\n",S/1000);
//result
//sensitivity=9 k-ohm/Volt 