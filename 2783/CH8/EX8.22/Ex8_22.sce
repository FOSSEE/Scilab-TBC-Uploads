clc
//initialization of new variables
clear
a=8 //degrees  In text calculated for 8 degrees even thoygh they mentioned it as 5 degrees
c=0.5 //m
b1=2 //m
b2=4 //m
//calculations
a=a*%pi/180
AR1=b1/c
AR2=b2/c
Cla1=2*%pi/(1+b1/AR1)
Cla2=2*%pi/(1+b2/AR2)
Cl1=Cla1*a
Cl2=Cla2*a
Cd1=Cl1^2/(%pi*AR1)
Cd2=Cl2^2/(%pi*AR2)
r1=Cl1/Cd1
r2=Cl2/Cd2
//results
printf('Lift to induced drag ratios are respectively %.2f and %.2f ',r1,r2)
