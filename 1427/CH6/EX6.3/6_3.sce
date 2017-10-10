//ques-6.3
//Calculating emf of a concentration cell
clc
C1=0.01; C2=0.1;//concentration of Zn(2+) ions (in M)
n=2;//number of electrons
E=(0.0592/n)*log10(C2/C1);
printf("The emf of the given concentration cell is %.4f V.",E);
