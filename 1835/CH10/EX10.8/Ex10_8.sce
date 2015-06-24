//CHAPTER 10 ILLUSRTATION 8 PAGE NO 274
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
m=80;//Mass of flywheel in kg
k=0.5;//Radius of gyration in m
N=250;//Speed in r.p.m
d=0.32;//Diamter of the drum in m
b=0.05;//Distance of pin in m
q=260;//Angle of contact in degree
U=0.23;//Coefficient of friction
P=20;//Force in N
a=0.35;//Distance at which force is applied in m

Tr=exp(U*q*(3.14/180));//Tensions ratio
T2=(P*a)/b;//Tension in N
T1=(Tr*T2);//Tension in N
TB=(T1-T2)*(d/2);//Torque in N.m
KE=((1/2)*(m*k^2)*((2*3.14*N)/60)^2);//Kinematic energy of the rotating drum in Nm
N1=(KE/(TB*2*3.14));//Speed in rpm
aa=((2*3.14*N)/60)^2/(4*3.14*N1);//Angular acceleration in rad/s^2
t=((2*3.14*N)/60)/aa;//Time in seconds

printf('Time required to bring the shaft to the rest from its running condition is %3.1f seconds',t)
