//Initilization of variables
l=4 //ft
wb=40 //rpm
we=60 //rpm
//Calculations
r=l/2 //ft
vb=r*((wb*2*%pi)/60) //ft/s
ve=r*((we*2*%pi)/60)
//Result
clc
printf('The linear speeds are %f ft/s and %f ft/s at b and e respectively',vb,ve)
