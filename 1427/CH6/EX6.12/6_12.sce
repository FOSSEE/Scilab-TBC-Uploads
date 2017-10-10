//ques-6.12
//Calculating valency of mercurous ion
clc
C2=0.01; C1=0.001;//content of mercurous nitrate (in N)
E=0.029;//emf of cell (in V)
F=96500;
T=273+18;//temperature (in K)
n=(2.303*8.314*T*log10(C2/C1))/(E*F);
printf("The valency of mercurous ion is %.0f.",n);
