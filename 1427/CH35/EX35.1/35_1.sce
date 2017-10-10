//ques-35.1
//Calculating frequency of radiations
clc
w=500;//wavelength (in nm)
c=2.996*10^10;//speed of light (in cm/s)
f=c/(w*10^-7);
printf("The frequency of the radiations is %.0f*10^14 Hz.",f*10^-14);
