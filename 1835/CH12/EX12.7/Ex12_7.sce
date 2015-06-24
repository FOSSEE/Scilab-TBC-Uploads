//CHAPTER 12 ILLUSRTATION 7 PAGE NO 318
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
mR=300//    reciprocating mass per cylinder in kg
r=.3//   crank radius in m
D=1.7//  driving wheel diameter in m
a=.7//  distance between cylinder centre lines in m
H=40//  hammer blow in kN
v=90//   speed in kmph
//=======================================
R=D/2//     radius of driving wheel in m
w=90*1000/3600/R//        angular velocity in rad/s
//Br*b=69.625*c  by mearument from diagram
c=H*1000/(w^2)/69.625//   portion of reciprocating mass to be balanced
T=2^.5*(1-c)*mR*w^2*r//   variation in tractive effort in N
M=a*(1-c)*mR*w^2*r/2^.5//     maximum swaying couple in N-m
printf('portion of reciprocating mass to be balanced=%.3f\n variation in tractive effort=%.3f N\n maximum swaying couple=%.3f N-m',c,T,M)
