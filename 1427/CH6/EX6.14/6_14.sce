//ques-6.14
//Calculating equilibrium constant for a reaction at 300 K
clc
e1=0.355; e2=0.3704;//emf of reduction reactions (in V)
T=300;//temperature (in K)
E=e2-e1;
n=1;//number of electrons used
F=96500;//(in C)
G=-n*F*E;
z=-G/(2.303*8.314*T);
//On solving, log10(K) = z
K=1.8;
printf("The equilibrium constant for the given reaction is %.1f.",K);
