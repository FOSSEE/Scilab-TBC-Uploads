// force is necessary to hold the defelector inplace in 32kg/s
//ex 2.13 pgno.51
clc
m=32 // MASS FLOW RATE
p=1000 // PRESURE
l=0.02//length
b=0.04//width
v1=m/(p*l*b)//velocity
mprintf('The velocity V1 = %d m/s',v1)
v2=40
Fx=m*(v1-v2*cosd(30))//fource
mprintf('\n Fx= %d N',Fx)
Fy=m*(v1-v2*sind(30))
mprintf('\n Fx= %d N',Fy)
