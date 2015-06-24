clc
clear
//input
v=400 //voltage
d=0.18 //distance of screen from centre
e=1.6*10^-19 //electronic charge
m=9.1*10^-31 //mass
l=0.03 //length of parallel plates
s=0.01 //air gap
//calculation
w=e*v//work done
v1=sqrt(2*e*v/m)//speed of electron 
e1=v/s//electric field strength
d1=d*6*10^3*l/(2*v)//vertical displacement
//output
printf("the work done is %3.3e J",w)
printf("\n the speed of electron is %3.3e ms^-1",v1)
printf("\n the displacement is %3.3f m",d1)
