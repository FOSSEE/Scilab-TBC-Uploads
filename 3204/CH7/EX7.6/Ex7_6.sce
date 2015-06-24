// Initiization of variables
W= 1000 //N // or 1kN
mu=0.3 // coefficient of friction between the rope and the cylinder
e=2.718 // constant
pie=3.14 // constant
alpha=90 // degree // since 2*alpha=180 egree
// Calculations
beta=2*pie*3 // radian // for 3 turn of the rope
// Here T1 is the larger tension in that section of the rope which is about to slip
T1=W //N
F=W/e^(mu*(1/(sind(alpha)))*(beta)) //N // Here T2=F
// Results
clc
printf('The  force required to suport the weight of 1000 N i.e 1kN is %f N \n',F)
