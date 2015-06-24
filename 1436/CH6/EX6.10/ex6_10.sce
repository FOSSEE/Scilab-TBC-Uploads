// Example 6.10, page no-375
clear
clc
c2=100*10^-6
r1=10*10^3
r2=100*10^3
r3=50*10^3
Cx=r1*c2/r3
Cx=Cx*10^6
printf("Cx = %d microFarad",Cx)
c=5
l=Cx/c
printf("\nLevel on the probe = %dm",l)
