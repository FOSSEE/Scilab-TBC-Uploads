//CHAPTER 3 ILLUSRTATION 12 PAGE NO 109
//TITLE:FRICTION
clc
clear
//===================================================================================
//INPUT DATA
PI=3.147
d2=.30//                             DIAMETER OF SHAFT IN m 
W=200000//                           LOAD AVAILABLE IN NEWTONS
N=75//                              SPEED IN rpm
U=.05//                             COEFFICIENT OF FRICTION
p=300000//                          PRESSURE AVAILABLE IN N/m^2
P=16200//                           POWER LOST DUE TO FRICTION IN WATTS
//====================================================================================
//CaLCULATION
T=P*60/2/PI/N//                      TORQUE INDUCED IN THE SHFT IN N-m
//LET X=(r1^3-r2^3)/(r1^2-r2^2)
X=(3/2*T/U/W)
r2=.15//                             SINCE d2=.30 m
c=r2^2-(X*r2)
b= r2-X
a= 1
r1=( -b+ sqrt (b^2 -4*a*c ))/(2* a);//     VALUE OF r1 IN m
d1=2*r1*100//                               d1 IN cm
n=W/(PI*p*(r1^2-r2^2))
//================================================================================
//OUTPUT
printf('\nEXTERNAL DIAMETER OF SHAFT =%3.3f cm\nNO OF COLLARS REQUIRED =%.3f or %.0f',d1,n,n+1)

