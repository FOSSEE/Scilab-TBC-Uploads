clc
//initialisation of variables
d=10//mm
b=60//kg/mm^2
del=8//mm
sig=11.0+0.56*60//kg/mm^2
l=%pi*10//mm
f=l*del//mm^2
//CALCULATIONS
P=f*sig//kg
//RESULTS
printf('the pressure P=% f kg',P)
