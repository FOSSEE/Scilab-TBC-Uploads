clc
//Chapter8
//Example8.17, page no 349
//Given
l=0.5//half line distance
Vs=10//Excitation voltage
Gamma=0.7+%i*0.3//propagation constant
[Vr,Vi]=polar(Vs*(%e^(-Gamma*l)))//vtg at mid point
mprintf('The voltage at the mid point of the line is %f /_%f ',Vr,Vi*180/%pi)

