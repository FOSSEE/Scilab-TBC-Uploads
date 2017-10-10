//ques-34.9
//Calculating concentration of a solution
clc
ratio=1/0.4;//= Io/I
EC=6000;//(in L/mol/cm)
l=2;//thickness (in cm)
C=log10(ratio)/(EC*l);
printf("The concentration of the solution is %.8f mol/L.",C);
