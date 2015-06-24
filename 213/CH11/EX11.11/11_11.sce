//To find torque, power and efficiency
clc
//Given:
d1=1.2, r1=d1/2, d2=0.5, r2=d2/2, x=4 //m
m=0.9 //kg/m
T=2000 //N
mu=0.3
N1=200, N2=450 //rpm
//Solution:
//Calculating the velocity of the belt
v=%pi*d1*N1/60 //m/s
//Calculating the centrifugal tension
TC=m*v^2 //N
//Calculating the tension in the tight side of the belt
T1=T-TC //N
//Calculating the angle alpha for an open belt drive
alpha=asin((r1-r2)/x)*180/%pi //degrees
//Calculating the angle of lap on the smaller pulley
theta=(180-2*alpha)*%pi/180 //radians
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta) //N
//Calculating the torque on the shaft of larger pulley
TL=(T1-T2)*r1 //N-m
//Calculating the torque on the shaft of smaller pulley
TS=(T1-T2)*r2 //N-m
//Calculating the power transmitted
P=(T1-T2)*v/1000 //kW
//Power lost in friction:
//Calculating the input power
P1=TL*2*%pi*N1/(60*1000) //kW
//Calculating the output power
P2=TS*2*%pi*N2/(60*1000) //kW
//Calculating the power lost in friction
Pf=P1-P2 //Power lost in friction, kW
//Calculating the efficiency of the drive
eta=P2/P1*100 //%
//Results:
printf("\n\n Torque on the shaft of larger pulley, TL = %.1f N-m.\n\n",TL)
printf(" Torque on the shaft of smaller pulley, TS = %d N-m.\n\n",TS)
printf(" Power transmitted, P = %.2f kW.\n\n",P)
printf(" Power lost in friction = %.2f kW.\n\n",Pf)
printf(" Efficiency of the drive, eta = %.1f %c.\n\n",eta,"%")