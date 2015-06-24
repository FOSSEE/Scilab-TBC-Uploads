//calculating various parameters of dc motor
//Chapter 2
//Example 2.11
//page 99
clear;
clc;
disp("Example 2.11")
V=230;            //armature voltage supply in volts
Ia=12;            //armature current in amperes
Ra=0.8;            //armature resistance in ohms
N=100;               //speed in radian per second
E=(V-(Ia*Ra))
printf("induced emf,E=%fV",E)
Te=(E*Ia)/N
printf("\nthe electromagnetic torque=%fNm",Te)
Pi=V*Ia
printf("\nelectrical input to the armature,Pinput= %dW",Pi)
Pd=Te*N
printf("\nmechanical developed=%fW",Pd)
loss=(Ia^2*Ra)
printf("\narmature copper loss=%fW",loss)


