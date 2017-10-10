//To find stress in the belt
clc
//Given:
N1=200, N2=300 //rpm
P=6*1000 //W
b=100, t=10 //mm
x=4, d2=0.5 //m
mu=0.3
//Solution:
//Stress in the belt for an open belt drive:
//Calculating the diameter of the larger pulley
d1=d2*(N2/N1) //m
//Calculating the velocity of the belt
v=%pi*d2*N2/60 //m/s
//Calculating the angle alpha for an open belt drive
alphao=asin((d1-d2)/x)*180/%pi //degrees
//Calculating the angle of contact on the smaller pulley
thetao=(180-2*alphao)*%pi/180 //radians
//Calculating the tensions in the belt
//Ratio of the tensions in the belt, T1/T2 = exp(mu*thetao), or T1-T2*exp(mu*thetao) = 0
//Power transmitted, P = (T1-T2)*v, or T1-T2 = P/v
A=[1 -exp(mu*thetao); 1 -1]
B=[0; P/v]
V=A \ B
T1o=V(1) //N
T2o=V(2) //N
//Calculating the stress in the belt
sigmao=T1o/(b*t) //MPa
//Stress in the belt for a cross belt drive:
//Calculating the angle alpha for a cross belt drive
alphac=asin((d1+d2)/(2*x))*180/%pi //degrees
//Calculating the angle of contact
thetac=(180+2*alphac)*%pi/180 //radians
//Calculating the tensions in the belt
//Ratio of the tensions in the belt, T1/T2 = exp(mu*thetac), or T1-T2*exp(mu*thetac) = 0
//Power transmitted, P = (T1-T2)*v, or T1-T2 = P/v
A=[1 -exp(mu*thetac); 1 -1]
B=[0; P/v]
V=A \ B
T1c=V(1) //N
T2c=V(2) //N
//Calculating the stress in the belt
sigmac=T1c/(b*t) //MPa
//Results:
printf("\n\n Stress in the belt for an open belt drive, sigma = %.3f MPa.\n\n",sigmao)
printf(" Stress in the belt for a cross belt drive, sigma = %.3f MPa.\n\n",sigmac)