clc
//Initialization of variables
Cna=0.11
Ccl=0.1
//calculations
x=poly(0,"x");
p=99*x^2 - 2.1*x+Cna*Ccl
z=roots(p)
alpha=z(2)
Na1=Cna-10*alpha
Cl1=Ccl-10*alpha
//results
printf(" Concentration of Na in 1  = %.4f M",Na1)
printf("\n Concentration of Cl in 1  = %.4f M",Cl1)
printf("\n Concentration of Na in 2  = %.4f M",alpha)
printf("\n Concentration of Cl in 2  = %.4f M",alpha)
