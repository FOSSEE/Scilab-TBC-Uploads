//ques-6.8
//Calculating standard emf and emf generated
clc
e1=1.7; e2=-0.31;//emfs of two half-cell reactions (in V)
C1=0.1;//concentration of hydrogen ion (in M)
C2=2;//concentration of sulphate ion (in M)
n=2;//number of electrons
Es=e1-e2;//standard emf (in V)
E=Es-(0.0592/n)*log10(1/(C1^4*C2^2));
printf("The standard emf is %.2f V and emf generated is %.2f V.",Es,E);
