clc
clear
//input
N=250 //number of turns
B=8.6*10^-4 //flux density
I=5 //current
A=16*10^-4//area
t=35
//calculation
c=B*I*A*N*sind(t)//moment of couple
x=c/(B*I*2*A*N)//doubling the area
y=asind(x)
//output
printf("the moment of couple is %3.3e Nm",c)
printf("\n the new angle produced  is %3.3f deg",y)
