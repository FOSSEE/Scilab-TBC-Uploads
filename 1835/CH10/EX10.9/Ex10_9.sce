//CHAPTER 10 ILLUSRTATION 9 PAGE NO 275
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
n=12;//Number of blocks
q=15;//Angle subtended in degree
P=185;//Power in kW
N=300;//Speed in r.p.m
U=0.25;//Coefficient of friction
d=1.25;//Diamter in m
b1=0.04;//Distance in m
b2=0.14;//Distance in m
a=1;//Diatance in m
m=2400;//Mass of rotor in kg
k=0.5;//Radius of gyration in m

Td=(P*60000)/(2*3.14*N*(d/2));//Tension difference in N
T=Td*(d/2);//Torque in Nm
Tr=((1+(U*tand(q/2)))/(1-(U*tand(q/2))))^n;//Tension ratio
To=(Td/(Tr-1));//Tension in N
Tn=(Tr*To);//Tension in N
P=((To*b2)-(Tn*b1))/a;//Force in N
aa=(T/(m*k^2));//Angular acceleration in rad/s^2
t=((2*3.14*N)/60)/aa;//Time in seconds

printf('Minimum force required is %3.0f N \nTime taken to bring to rest is %3.1f seconds',P,t)
