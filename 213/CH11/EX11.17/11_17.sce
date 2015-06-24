//To find power and shaft speed
clc
//Given:
funcprot(0)
beta=30/2 //degrees
alpha=750*10^-6 //mm^2
mu=0.12
rho=1.2*1000 //kg/m^3
sigma=7*10^6 //N/m^2
d=300/1000 //m
N=1500 //rpm
//Solution:
//Power transmitted:
//Calculating the velocity of the belt
v=%pi*d*N/60 //m/s
//Calculating the mass of the belt per metre length
l=1 //m
m=alpha*l*rho //kg/m
//Calculating the centrifugal tension
TC=m*v^2 //N
//Calculating the maximum tension in the belt
T=sigma*alpha //N
//Calculating the tension in the tight side of the belt
T1=T-TC //N
//Calculating the tension in the slack side of the belt
theta=%pi //Angle of contact, radians
T2=T1/exp(mu*theta*(1/sind(beta))) //N
//Calculating the power transmitted
P=(T1-T2)*v*2/1000 //kW
//Shaft speed:
//Calculating the belt speed for maximum power transmitted
v1=sqrt(T/(3*m)) //m/s
//Calculating the shaft speed for maximum power transmitted
N1=v1*60/(%pi*d) //rpm
//Results:
printf("\n\n Power transmitted, P = %.3f kW.\n\n",P)
printf(" Shaft speed at which the power transmitted would be maximum, N1 = %d rpm.\n\n",N1)