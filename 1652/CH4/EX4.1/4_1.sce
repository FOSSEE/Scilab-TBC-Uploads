clc
//initialization of variables
B=10.34 //cm^-1
c=2.998*10^10 //cm/s
h=6.625*10^-27 //erg sec
//calculations
I=h/(8*%pi^2 *B*c)
//results
printf("Moment of inertia = %.2e g cm^2",I)
