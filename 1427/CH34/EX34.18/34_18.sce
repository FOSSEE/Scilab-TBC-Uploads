//ques-34.18
//Calculating moles of CO formed
clc
w=302;//wavelength (in nm)
QY=0.54;
E1=15000;//energy absorbed (in erg/mol)
E=(1.196*10^15)/w;//energy of 1 einstein (in erg/mol)
n=E1/E;//number of einsteins absorbed
N=QY*n;
printf("Moles of CO formed are %.2f*10^-9.",N*10^9)
