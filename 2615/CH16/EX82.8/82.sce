clc
//initialisation of variables
z1=12//m
z2=36//m
z3=22//m
z4=28//m
z5=12//m
z6=72//m
q=18//mm
z=25//m
m=0.3//kg-cm
n=0.9//m
a=600//mm
M=a*(0.2/2)//kg-m
H=M*m*q*n//mm
//CALCULATIONS
V=(%pi*0.2*z)/(60*q)//m/sec
V1=(2*%pi*m*z)/(60*1000)//hp
N=(12.5*%pi*m*z)/(30*75)//hp
//RESULTS
printf('the kinematic scheme of a einch with hand crank=% f hp',N)
