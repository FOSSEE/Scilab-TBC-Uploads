clc
//Chapter9
//Example9.9
//Given
//b
c=3e8
f=800e3// operating freq
dl=27//effective height
lambda=c/f

Rr=40*(3.142^2)*(dl/lambda)^2//Radiation Resistance
mprintf('Radiation resistance is %f ohm',Rr)

