clc
//Initialization of variables
aZn=0.1
aCu=0.01
e1=0.763 //volt
e2=0.337 //volt
//calculations
e0=e1+e2
Q=aZn/aCu
E=e0- 0.05915*log10(Q) /2
//results
printf("Emf of the cell = %.3f volts",E)
