//ques-34.25
//Calculating concentration of a substance
clc
EC=14000;//molar absorptivity
l=1;//thickness (in cm)
A=0.85;//absorbance
C=A/(EC*l);
printf("The concentration of the given substance is %.7f M.",C);
