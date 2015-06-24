//To find width of the belt
clc
//Given:
t=9.75/1000, d1=300/1000, x=3 //m
P=15*1000 //W
N1=900, N2=300 //rpm
rho=1000 //kg/m^3
sigma=2.5*10^6 //N/m^2
mu=0.3
//Solution:
//Calculating the diameter of the driven pulley
d2=d1*(N1/N2) //m
//Calculating the velocity of the belt
v=%pi*d1*N1/60 //m/s
//Calculating the angle alpha for an open belt drive
alpha=asin((d2-d1)/(2*x))*180/%pi //degrees
//Calculating the angle of lap
theta=(180-2*alpha)*%pi/180 //radians
//Calculating the tensions in the belt
//Ratio of tensions, log(T1/T2) = mu*theta, or T1-T2*exp(mu*theta) = 0
//Power transmitted, P = (T1-T2)*v, or T1-T2 = P/v
A=[1 -exp(mu*theta); 1 -1]
B=[0; P/v]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the width of the belt
b=T1/(sigma*t-t*1*rho*v^2)*1000 //mm
//Results:
printf("\n\n Width of the belt, b = %d mm.\n\n",b)