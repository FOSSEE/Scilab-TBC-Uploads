//ques-6.4
//Calculating emf of a daniel cell
clc
Es=1.1;//standard potential of cell (in V)
C1=0.001;//concentration of Zn(2+) (in M)
C2=0.1;//concentration of Cu(2+) (in M)
n=2;//number of electrons
E=Es+(0.0592/n)*log10(C2/C1);
printf("The emf of the given daniel cell is %.4f V.",E);
