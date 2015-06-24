clc
clear
//Initialization of variables
y=0.18
z=0.6
//calculations
mole=[1-y-z 5-y-2*z y 3*y+4*z z]
s=sum( mole)
molef=mole/s
//results
disp("Product composition moles  = ")
format('v',6);mole
disp(mole)
disp("Mole fraction = ")
format('v',6);molef
disp(molef)
