clc
clear

//INPUT
r1=60;//distance of first black body in cm
r2=30;//distance of second black body in cm
t1=873;//temperature of first black body in K
t2=573;//temperature of the second black body in K

//CALCULATIONS
i=(t2^4/t1^4)*(r1^2/r2^2);//ratio of intensity of radition

//OUTPUT
mprintf('ratio of intensity of radition is %3.2f',i)
