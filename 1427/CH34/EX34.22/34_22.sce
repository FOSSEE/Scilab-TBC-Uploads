//ques-34.22
//Calculating quantum yield of a reaction
clc
w=424;//wavelength (in nm)
t=20;//time (in min)
V=36.7;//volume of Sodium sulphite solution used (in mL)
N=0.00564;//normality of Sodium sulphite solution
I=9.13*10^3;//intensity (in erg/s)
n=(V/1000)*N/2;//moles of ethylene iodine decomposed
q=I*t*60;//(in ergs)
QY=(n*1.196*10^15)/(q*w);
printf("The quantum yield of the reaction is %.2f.",QY);
