clc
clear
//Initalization of variables
kp=10^(1.45)
//calculations
x=poly(0,"x")
s=(1-x)^2 *(2+x) -kp^2 *x^(3)
vec=roots(s)
X=vec(3)
xper=X*100
//results
printf("Amount of dissociaton = %.1f percent",xper)
printf("\n Of each original mole of CO2, there will be %.3f mole of CO , %.3f mol of Oxygen and %.3f mol of CO2",X,X/2,(1-X))
