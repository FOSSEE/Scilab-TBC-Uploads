//ques-34.13
//Calculating molar absorptivity of a solution
clc
C=10^-4;//concentration (in M)
A=0.2;//absorbance
l=2.5;//thickness (in cm)
EC=A/(C*l/10);
printf("The molar absorptivity of the solution is %d L/mol/cm.",EC);
