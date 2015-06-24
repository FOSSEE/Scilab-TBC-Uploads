clc
//initialisation of variables
v=0.7//percent
p=250//psia
p1=0.50//percent
h=(%pi/4)*(13.1)^2*(16.4/1728)//cu ft
g=0.090//ft
p2=1.8438//cu ft
//CALCULATIONS
W=v*h//cu ft
V=g+h//cu ft
V1=g+p1*h//cu ft
H=V1/p2//lb
//RESULTS
printf('the specific volume of dry =% f lb',H)
