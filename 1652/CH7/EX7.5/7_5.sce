clc
//Initialization of variables
n1=2
n2=10
n3=3
P=720 //mm of Hg
//calculations
n=n1+n2+n3
x1=n1/n
P1=x1*P
x2=n2/n
P2=x2*P
x3=n3/n
P3=x3*P
//results
printf("\n Partial pressure of N2 = %d mm",P1)
printf("\n Partial pressure of O2 = %d mm",P2)
printf("\n Partial pressure of CO2 = %d mm",P3)
