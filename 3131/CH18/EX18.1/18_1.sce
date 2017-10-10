clear all; clc;
disp("Ex 18_1")
//Planar Kinetics of a Rigid Body: Work and Energy
mb=6//mass of the block,kg
md=10//mass of the disc,kg
m=12//mass of the cylinder,kg
rc=0.1//m
vb=0.8//m/s
rd=0.1//m
wd=vb/rd
printf('\n\n wd = %0.0f rad/s',wd)
re=0.2//m
ve=0.8//m/s
wc=ve/re
printf('\n\n wc = %0.0f rad/s',wc)
rg=0.1//m
vg=rg*wc
printf('\n\n vg = %0.1f m/s',vg)
//For the block
Tb=0.5*mb*vb^2
printf('\n\n Tb = %0.2f J',Tb)
//For the disk
Td=0.5*0.5*md*rd^2*wd^2
printf('\n\n Td = %0.2f J',Td)
//For the Cylinder
Tc=(0.5*m*vg^2)+(0.5*0.5*m*rc^2*wc^2)
printf('\n\n Tc = %0.2f J\n',Tc)
//Total Energy of the knectic system,
T=Tb+Td+Tc
disp("Total Energy of the knectic system,")
printf('\n T = %0.2f J',T)
