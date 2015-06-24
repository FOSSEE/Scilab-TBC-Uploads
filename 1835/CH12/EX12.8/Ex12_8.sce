//CHAPTER 12 ILLUSRTATION 8 PAGE NO 320
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
N=1800//       speed of the engine in rpm
r=6//     length of crank in cm
l=24//    length of connecting rod in cm
m=1.5//   mass of reciprocating cylinder in kg
//====================
w=2*pi*N/60//        angular speed in rad/s
UPC=.019*w^2//      unbalanced primary couple in N-m
n=l/r//   ratio of length of crank to the connecting rod 
USC=.054*w^2/n//    unbalanced secondary couple in N-m
printf('unbalanced primary couple= %.3f N-m\n unbalanced secondary couple=%.3f N-m',UPC,USC)
