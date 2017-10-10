//ques-6.9
//Calculating equilibrium constant of a reaction
clc
e1=0.77;//emf for Fe(3+)/Fe(2+) (in V)
e2=0.8;//emf for Ag+/Ag (in V)
Es=e2-e1;
n=2;//number of electrons
//On solving, log10(K) = (n*Es)/0.0592
K=3.31;//(*10^26)
printf("The value of equilibrium constant  is %.2f*10^26.",K);
