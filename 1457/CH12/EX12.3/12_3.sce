clc
//Initialization of variables
P1=700 //kN/m^2
P2=400 //kN/m^2
D2=12.5 //cm
D1=25 //cm
C=0.985
g=9.81
R=287 //m^2/s^2 K
T=273+20 //K
//calculations
Pr=P2/P1
Dr=D2/D1
Y=0.72
gam1=P1*g/(R*T)
G=C*Y*%pi/4 *(D2/100)^2 *sqrt(2*g*gam1*(P1-P2)/(1- Dr^4))
//results
printf("Weight flow rate = %.4f kN/s",G)
