//ques-6.11
//Calculating emf of a concentration cell
clc
C2=0.1; C1=0.01;//concentration of Zn(2+) ion (in M)
n=2;//number of electrons
E=(0.0592/n)*log10(C2/C1);
printf("The emf required is %.4f V.",E);
