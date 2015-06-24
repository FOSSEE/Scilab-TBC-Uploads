//To find number of V-belts
clc
//Given:
P=90 //kW
N2=250, N1=750 //rpm
d2=1, x=1.75 //m
v=1600/60 //m/s
a=375*10^-6 //m^2
rho=1000 //kg/m^3
sigma=2.5*10^6 //N/m^2
beta=35/2 //degrees
mu=0.25
//Solution:
//Calculating the diameter of the pulley on the motor shaft
d1=d2*(N2/N1) //m
//Calculating the mass of the belt per metre length
l=1 //m
m=a*l*rho //kg/m
//Calculating the centrifugal tension
TC=m*v^2 //N
//Calculating the maximum tension in the belt
T=sigma*a //N
//Calculating the tension in the tight side of the belt
T1=T-TC //N
//Refer Fig. 11.21
//Calculating the angle alpha
alpha=asin((d2-d1)/(2*x))*180/%pi //degrees
//Calculating the angle of lap on smaller pulley
theta=(180-2*alpha)*%pi/180 //radians
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta*(1/sind(beta))) //N
//Number of V-belts:
//Calculating the power transmitted per belt
P1=(T1-T2)*v/1000 //Power transmitted per belt, kW
//Calculating the number of V-belts
n=P/P1 //Number of V-belts
//Calculating the length each of belt for an open belt drive
L=%pi/2*(d2+d1)+2*x+(d2-d1)^2/(4*x) //m
//Results:
printf("\n\n Number of V-belts = %d.\n\n",n+1)
printf(" Length of each belt, L = %.3f m.\n\n",L)