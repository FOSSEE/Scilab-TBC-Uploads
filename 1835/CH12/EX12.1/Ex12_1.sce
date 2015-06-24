//CHAPTER 12 ILLUSRTATION 1 PAGE NO 310
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
N=250//               speed of the reciprocating engine in rpm
s=18//              length of stroke in mm
mR=120//             mass of reciprocating parts in kg
m=70//               mass of revolving parts in kg
r=.09//                radius of revolution of revolving parts in m
b=.15//               distance at which balancing mass located in m
c=2/3//              portion of reciprocating mass balanced 
teeta=30//           crank angle from inner dead centre in degrees
//===============================
B=r*(m+c*mR)/b//             balance mass required in kg
w=2*pi*N/60//     angular speed in rad/s
F=mR*w^2*r*(((1-c)^2*(cosd(teeta))^2)+(c^2*(sind(teeta))^2))^.5//      residual unbalanced forces in N
printf('Magnitude of balance mass required= %.0f kg\n Residual unbalanced forces= %.3f N',B,F)
