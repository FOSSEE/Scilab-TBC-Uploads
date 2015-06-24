//CHAPTER 12 ILLUSRTATION 4 PAGE NO 314
//TITLE:Balancing of reciprocating of masses
clc
clear
pi=3.141
mR=900//   mass of reciprocating parts in kg
N=90//     speed of the engine in rpm
r=.45//crank radius in m
cP=.9*mR*(2*pi*N/60)^2*r*2^.5/1000//    maximum unbalanced primary couple in kNm
printf('maximum unbalanced primary couple=%.3f  k Nm',cP)
