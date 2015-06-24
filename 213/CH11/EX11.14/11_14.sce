//To find diameter, power and tension
clc
//Given:
x=1.2, d2=400/1000, t=5/1000, b=80/1000 //m
N1=350, N2=140 //rpm
mu=0.3
sigma=1.4*10^6 //N/m^2
//Solution:
//Calculating the diameter of the driving pulley
d1=d2*(N2/N1) //m
//Maximum power transmitted by the belting:
//Refer Fig. 11.18
//Calculating the angle alpha
alpha=asin((d2-d1)/(2*x))*180/%pi //degrees
//Calculating the angle of contact of the belt on the driving pulley
theta=(180-2*alpha)*%pi/180 //radians
//Calculating the maximum tension to which the belt can be subjected
T1=sigma*b*t //N
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta) //N
//Calculating the velocity of the belt
v=%pi*d1*N1/60 //m/s
//Calculating the power transmitted
P=(T1-T2)*v/1000 //kW
//Calculating the required initial belt tension
T0=(T1+T2)/2 //N
//Results:
printf("\n\n Diameter of the driving pulley, d1 = %.2f m.\n\n",d1)
printf(" Maximum power transmitted by the belting, P = %.3f kW.\n\n",P)
printf(" Required initial belt tension, T0 = %.1f N.\n\n",T0)