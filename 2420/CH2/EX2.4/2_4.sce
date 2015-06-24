clc
clear
//Initialization of variables
H1=0.059
O1=0.199
H2=0.044
O2=0.079
C=0.66
S=0.011
//calculations
Qh1= 14600*C+62000*(H1-O1/8)+4050*S
Qh2=14600*C+62000*(H2-O2/8)+4050*S
//results
printf("Heating value in case 1 = %d Btu/lb ",Qh1)
printf("\n Heating value in case 2 = %d Btu/lb ",Qh2)
