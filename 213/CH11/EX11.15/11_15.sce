//To find width, tension and length
clc
//Given:
d2=240/1000, d1=600/1000, x=3 //m
P=4*1000 //W
N2=300 //rpm
mu=0.3
T1s=10 //Safe working tension, N/mm width
//Solution:
//Minimum width of the belt:
//Calculating the velocity of the belt
v=%pi*d2*N2/60 //m/s
//Calculating the angle alpha for an open belt drive
alpha=asin((d1-d2)/(2*x))*180/%pi //degrees
//Calculating the angle of lap on the smaller pulley
theta=(180-2*alpha)*%pi/180 //radians
//Calculating the tensions in the belt
//Power transmitted, P = (T1-T2)*v, or T1-T2 = P/v
//Ratio of tensions, log(T1/T2) = mu*theta, or T1-T2*exp(mu*theta) = 0
A=[1 -1; 1 -exp(mu*theta)]
B=[P/v; 0]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the minimum width of the belt
b=T1/T1s //mm
//Calculating the initial belt tension
T0=(T1+T2)/2 //N
//Calculating the length of the belt required
L=%pi/2*(d1+d2)+2*x+(d1-d2)^2/(4*x) //m
//Results:
printf("\n\n Minimum width of the belt, b = %.1f mm.\n\n",b)
printf(" Initial belt tension, T0 = %.1f N.\n\n",T0)
printf(" Length of the belt required, L = %.2f m.\n\n",L)