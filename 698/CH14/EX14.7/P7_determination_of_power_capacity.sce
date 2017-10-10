clc
//Example 14.7
//To determine power capacity

//------------------------------------------------------------------------------
//Given Data:
//number of steel disks
n1=4
//number of bronze disks
n2=3
//Area of contact
a=2.5*(10^-3)//m^2
//Mean radius
Rf=50/1000//m
//coefficient of friction
f=0.25
//Axial force
F=350//N
//speed
N=400//rpm
//------------------------------------------------------------------------------

//Assuming uniform wear
//total number of contacting surfaces
n=n1+n2-1
//Torque
T=f*F*n*Rf
//Power capacity
P=(2*%pi*N*T)/60

//------------------------------------------------------------------------------
//Printing result file to .txt
res7=mopen(TMPDIR+'7_determination_of_power_capacity.txt','wt')
mfprintf(res7,'Power capacity is %0.2f kW',P*(10^-3))
mclose(res7)
editor(TMPDIR+'7_determination_of_power_capacity.txt')

//------------------------------------------------------------------------------
//------------------------------End of program----------------------------------