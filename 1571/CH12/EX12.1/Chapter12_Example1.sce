clc
clear

//INPUT
t1=300;//temperature of the surroundings in K
t2=900;//temperature of the hot body p in K
t3=500;//temperature of the hot body q in K
a=5.67*10^-8;//stefan boltzmann constant in W/m^2.K^4

//CALCULATIONS
q1=a*(t2^4-t1^4);//heat lost from hot body p in w/m^2
q2=a*(t3^4-t1^4);//heat lost from hot body q in w/m^2
q=q1/q2;//ratio of heat lost from two substances

//OUTPUT
mprintf('ratio of heat lost from two substances is %3.2f',q)
