//CHAPTER 12 ILLUSRTATION 2 PAGE NO 310
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
g=10//    acceleration due to gravity approximately in m/s^2
mR=240//    mass of reciprocating parts per cylinder in kg
m=300//     mass of rotating parts per cylinder in kg
a=1.8//distance between cylinder centres in m
c=.67//   portion of reciprocating mass to be balanced
b=.60//       radius of balance masses in m
r=24//       crank radius in cm
R=.8//radius of thread of wheels in m
M=40
//=======================================
Ma=m+c*mR//            total mass to be balanced in kg
mD=211.9//      mass of wheel D from figure in kg
mC=211.9//..... mass of wheel C from figure in kg
theta=171//     angular position of balancing mass C in degrees
Br=c*mR/Ma*mC//       balancing mass for reciprocating parts in kg
w=(M*g^3/Br/b)^.5//   angular speed in rad/s
v=w*R*3600/1000// speed in km/h
S=a*(1-c)*mR*w^2*r/2^.5/100/1000//   swaying couple in kNm
printf('speed=%.3f kmph\n swaying couple=%.3f kNm',v,S)
