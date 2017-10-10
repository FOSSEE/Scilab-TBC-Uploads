clc;
clear;
D=0.50;//Diameter of machine in m
l=0.20;//Lemgth of machine in m
lg=0.005;//Gap length in m
A1=12800;//Current density of stator
A2=9600;//Current density of rotor
Lamda=%pi/3;//Electrical torque angle
sin(Lamda)==0.87;
S=sin(Lamda);
Mewzero=4*%pi*(1e-7);//Permeability constant
F1=((A1)*D)/2;//MMF of stator
F2=((A2)*D)/2;//MMF of rotor
M=-((%pi*D*l*(F1)*(F2)*S*(Mewzero))/(2*(lg)));//Torque produced
//case1:
disp('To find the torque with the machine windings arranged to give a 2-pole field:')
M1=M/1;//Torque produced with 2-pole field
disp(M1,'Torque for 2-pole field in N-m is')
//case2:
disp('To find the torque with the machine windings arranged to give a 8-pole field:')
M2=M/4;//Torque produced with 8-pole field
disp(M2,'Torque for 8-pole field in N-m is')
