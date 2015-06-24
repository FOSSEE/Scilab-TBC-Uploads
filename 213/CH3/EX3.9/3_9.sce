//To find energy lost and resistance
clc
//Given:
m1=300,m2=500 //kg
s=1,x=150/1000 //m
//Solution:
//Calculating the velocity with which mass m1 hits the pile
u=0
v1=sqrt(2*9.81*s+u^2) //m/s
//Calculating the common velocity after impact
v2=0
v=(m1*v1+m2*v2)/(m1+m2) //m/s
//Calculating the kinetic energy before impact
KEb=m1*9.81*s //Kinetic energy before impact, N-m
//Calculating the kinetic energy after impact
KEa=1/2*(m1+m2)*v^2 //Kinetic energy after impact, N-m
//Calculating the energy lost in the blow
E=KEb-KEa //Energy lost in the blow, N-m
//Calculating the average resistance against the pile
R=KEa/x+m1*9.81+m2*9.81
//Results:
printf("\n\n The energy lost in the blow is %d N-m.\n",E)
printf(" The average resistance against the pile, R = %.3f kN.\n\n",R/1000)