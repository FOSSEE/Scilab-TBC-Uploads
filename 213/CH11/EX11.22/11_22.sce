//To find initial tension and diameter
clc
//Given:
PT=24 //kW
d=400/1000 //m
N=110 //rpm
funcprot(0)
beta=45/2 //degrees
theta=160*%pi/180 //radians
mu=0.28
n=10
//Solution:
//Initial tension:
//Calculating the power transmitted per rope
P=PT/n*1000 //W
//Calculating the velocity of the rope
v=%pi*d*N/60 //m/s
//Calculating the tensions in the rope
//Power transmitted, P = (T1-T2)*v, or T1-T2 = P/v
//Ratio of tensions, log(T1/T2) = mu*theta*(1/sind(beta)), or T1-T2*exp(mu*theta*(1/sind(beta))) = 0
A=[1 -1; 1 -exp(mu*theta*(1/sind(beta)))]
B=[P/v; 0]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the initial tension in each rope
T0=(T1+T2)/2 //N
//Diameter of each rope:
//Calculating the girth of rope
C=sqrt(T1/(122*10^3-53*v^2))*1000 //mm
//Calculating the diameter of each rope
d1=C/%pi //mm
//Results:
printf("\n\n Initial tension, T0 = %.2f N.\n\n",T0)
printf(" Diameter of each rope, d1 = %.2f mm.\n\n",d1)