clc
clear

//input data
M1=0.25 //Mach number at entrance
M2=1 //Mach number at exit
D=0.04 //inner tude diameter in m
f=0.002 //frictional factor

//calculation
X1=8.537 //frictional constant fanno parameter at entry from gas tables @M1=0.25
X2=0 //frictional constant fanno parameter at exit from gas tables @M2=1
X=X1-X2 //overall frictional constant fanno parameter i.e. (4*f*L)/D
L=(X*D)/(4*f) //Length of the pipe in m

//output
printf('(A)Length of the pipe is %3.3f m',L)
