//Maximum power transmitted
m=0.9
v=20
Tc=m*v^2  //N
f=1.5
d=36
T=(f*%pi*d^2)/(4)  //N
T2=T-Tc  //N
mu=0.3
theta=220*%pi/180  //radians
T1=T2/(%e^mu*theta*(1/sind(30)))  //N
P=(T2-T1)*v/1000  //kW
printf("maximum power P=%.3f kW ",P)
