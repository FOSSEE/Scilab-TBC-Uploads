//Initilization of variables
C1=20 //N-m
C2=40 //N-m
C3=-55 //N-m
//Calculations
C=sqrt(C1^2+C2^2+C3^2) //N-m
thetax=C2/C 
thetay=C3/C
thetaz=C1/C
Cx=C*thetax //N-m
Cy=C*thetay //N-m
Cz=C*thetaz //N-m
//Result
clc
printf('Couple in vector notation:%fi%fj+%fk N.m',Cx,Cy,Cz) //N-m
