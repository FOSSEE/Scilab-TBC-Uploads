//CHAPTER 12 ILLUSRTATION 6 PAGE NO 316
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
rA=.25//     stroke length of A piston  in m
rB=.25//    stroke length of B piston  in m
rC=.25// stroke length C piston  in m
N=300// engine speed in rpm
mRL=280// mass of reciprocating parts in inside cylinder kg
mRO=240//   mass of reciprocating parts in outside cylinder kg
c=.5//  portion ofreciprocating masses to be balanced 
b1=.5//  radius at which masses to be balanced in m
//======================
mA=c*mRO//    mass of the reciprocating parts to be balanced foreach outside cylinder in kg
mB=c*mRL//    mass of the reciprocating parts to be balanced foreach inside cylinder in kg
B1=79.4//         balancing mass for reciprocating parts in kg
w=2*pi*N/60//   angular speed in rad/s
H=B1*w^2*b1//   hammer blow per wheel in N
printf('Hammer blow per wheel= %.3f N',H)
