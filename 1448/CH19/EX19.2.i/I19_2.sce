clc
//Initialization of variables
A=5.1 //Hz
B=-1.4 //Hz
C=3.2 //Hz
an1=120 //degrees
an2=180 //degrees
//calculations
j1=A+B*cosd(an1) + C*cosd(2*an1)
j2=A+B*cosd(an2) + C*cosd(2*an2)
//results
printf("Spin-spin coupling constant = %d Hz",j1)
printf("\n Spin-spin coupling constant = %d Hz",j2+1)
