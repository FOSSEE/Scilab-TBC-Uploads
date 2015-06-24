clc
//Chapter7
//Example7.6
//Given
mue=25// tube parameters
rp=10e3// tube parameters
gm=2.5e-3// transconductance
Req=2.5/gm// equivalent resistance
Rs=1000
Rg=1e5
F1=1+(((Req*((Rs+Rg)^2))+Rg*Rs^2)/(Rs*(Rg^2)))//noise figure of the first stage
Rg2=9.1e3
Rs2=10e3
Es=1// assuming Es=1 for ease of calculation
Pi=((Es/2e3)^2)*1e3
Po=1.532e-2*Es^2
Ap1=Po/Pi
F2=1+(((Req*((Rs2+Rg2)^2))+Rg2*Rs2^2)/(Rs2*(Rg2^2)))// noise figure of the second stage
F=(F1)+((F2-1)/Ap1)
mprintf('Overall Noise figure is:%f',F)


