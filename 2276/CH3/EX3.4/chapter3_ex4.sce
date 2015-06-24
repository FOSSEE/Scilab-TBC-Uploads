clc
clear

//input
n1=16;//number of coils under the influence of the poles at any instant
phi=0.03;//flux produced by each coil in weber
a1=(200*300*(10^-6));//area of a pole in square meter
n2=8;//number of turns in each coil
d=0.25;//diameter of the armature in meters
i=12;// current in the armature conductors in amperes 
l=0.3;//length of the pole in meters

//calculations
b=phi/a1;//flux density under poles in tesla
f1=b*i*l;//force acting on 1 conductor in newton
f2=n2*f1;//force per coil side in newton
t1=f2*(d/2);//toque per coil side in newton meter
t2=t1*2;//total torque per coil in newton meter
T=n1*t2;//total torque on armature in newton meter

//output
mprintf('the total exerted on the armature is %3.1f Nm',T)
