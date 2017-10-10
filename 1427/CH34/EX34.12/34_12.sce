//ques-34.12
//Calculating concentration of a solution
clc
ratio=100/20;//= Io/I
EC=12000;//(in L/mol/cm)
l=2.5;//thickness (in cm)
C=log10(ratio)/(EC*l);
printf("The concentration of the solution is %.7f mol/L.",C);
