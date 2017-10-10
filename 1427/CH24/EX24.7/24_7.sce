//ques-24.7
//Calculating concentration of an ethereal solution
clc
//1st case
C1=0.07/10;//concentration of water (in g/mL)
C2=0.013/10;//concentration of ether (in g/mL)
K=C1/C2;//partition coefficient
//2nd case
C1=0.024/10;//concentration of water (in g/mL)
C2=C1/K;
printf("The concentration of the ethereal solution is %.7f g/mL.",C2);
