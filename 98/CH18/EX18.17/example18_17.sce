//Chapter 18
//Example 18_17
//Page 451

clear;clc;

Er=10.4*1e3/sqrt(3);
X1=0.6;
X2=0.5;
X0=0.2;

If=sqrt(3)*Er/(X1+X2);

printf("Phase emf of R-phase = %d V \n\n", Er);
printf("Fault current for line to line fault = %.1f A \n\n", If);
