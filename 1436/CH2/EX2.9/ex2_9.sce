// Example 2.9, page no-120
clear
clc

R=120
l=122
a=0.1
rho=R*a/l
R1=140
l1=sqrt(R1*a*l/rho)
l1=ceil(l1)
printf("Length l1 = %d meters",l1)
A1=a*l/l1
printf("\nArea A1 = %.4f mm^2",A1)
