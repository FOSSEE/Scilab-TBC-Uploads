//ques-6.6
//Calculating concentration of nickel ions in the cell
clc
e1=-0.25;//emf for Ni(2+)/Ni (in V)
e2=0.34;//emf for Cu(2+)/Cu (in V)
C1=0.75;//concentration of Cu(2+) (in M)
E=0.601;//emf of cell (in V)
n=2;//number of electrons
//On solving, E = e2-e1+(0.0592/n)*log(C1/C2)
C2=C1/2.3529;//concentration of Ni(2+) (in M)
printf("The concentration of nickel ions is %.4f M.",C2);
