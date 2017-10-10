//ques-34.23
//Calculating quantum yield of a reaction
clc
c1=0.0506; c2=0.0394;//initial and final concentration of oxalic acid (in M)
q=8.81*10^8;//(in ergs)
w=245;//wavelength (in nm)
n=(c1-c2)/100;//moles of oxalic acid decomposed
QY=(n*1.196*10^15)/(q*w);
printf("The quantum yield of the reaction is %.3f.",QY);
