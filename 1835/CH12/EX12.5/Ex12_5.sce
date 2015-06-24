//CHAPTER 12 ILLUSRTATION 5 PAGE NO 315
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
mRA=160//   mass of reciprocating cylinder A in kg
mRD=160//   mass of reciprocating cylinder D in kg
r=.05// stroke lenght in m
l=.2//  connecting rod length in m
N=450//   engine speed in rpm
//===========================
theta2=78.69//           crank angle between A & B  cylinders in degrees
mRB=576.88//  mass of cylinder B in kg
n=l/r//    ratio between connecting rod length and stroke length
w=2*pi*N/60//   angular speed in rad/s
F=mRB*2*w^2*r*cosd(2*theta2)/n
printf('Maximum unbalanced secondary force=%.3f N in anticlockwise direction thats why - sign',F)
