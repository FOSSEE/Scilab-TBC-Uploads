clc
clear
//input
B=4.3*10^-4//magnetic flux density
I=6.4//current 
L=4.8//length of wire
t=24//inclination through the field
//calculation
f=B*I*L//force on wire when it is perpendicular
f1=B*I*L*sind(t)//force on wire when it is inclined at t degrees
//output
printf("the force on wire is %3.3f N",f)
printf("\nthe force at an anglr 24 deg is %3.3e N",f1)
