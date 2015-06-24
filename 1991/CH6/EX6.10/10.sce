clc
clear
//input
m=3*10^-2 //mass of water
r1=1*10^3//density of water
r2=0.5//density of steam
p=1.01*10^5//atmospheric pressure
//calculation
v1=m/r1//volume of water
v2=m/r2//volume of gas
w=(v2-v1)*p//external work done by gas
//output
printf("the work done is %3.0f J",w)
