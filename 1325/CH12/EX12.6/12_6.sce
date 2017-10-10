//To find the torque exerted on AB to overcome the inertia of the links and the forces which act on the pins B and C
clc
//given
AB=2.5//in
BC=7//in
CD=4.5//in
AD=8//in
ED=2.3//from figure
N=180
w=N*%pi/30
m=3//lb
k=3.5//radius of gyration
g=32.2//ft/s^2
QT=1.35//inches from figure
alpha=w^2*(QT/CD)
Torque=m*(k/12)^2*alpha/g
Torque1=Torque*12
Tadd=m*ED//additional torque
Tc=Tadd+Torque1//total torque
Fc1=Tc/CD
//link BC
M=5//lb
gA=1.8//in
fg=w^2*(gA/12)
F=M*fg/g
OaG=5.6//in
Kg=2.9//in
GZ=Kg^2/OaG
//scaled from figure
IB=9//in
IC=5.8//in
IX=2.49//in
IY=1.93//in
Fb1=(Fc1*IC+F*IX+M*IY)/IB
Tor=Fb1*AB
//from force polygon
Fc2=1//lb
Fb2=15.2//lb
Fb=(Fb1^2+Fb2^2)^(1/2)
Fc=(Fc1^2+Fc2^2)^(1/2)
printf("\nThe torque which must be exerted on AB in order to overcome the inertia of the links = Fb1*AB = %.1f lb.in\nThe total force applied to the link BC \nAt pin C = %.2f lb\nAt pin B = %.1f lb\n",Tor,Fc,Fb)
