clc
clear
disp('example 14.13')
p=4000 //power area
n=2    //number of units
r=2    //speed regulation
h=5    
pt=600    //given tie power
pan=40   //power angle
stp=100
f=50
t=(pt/p)*cosd(pan)
wo=((2*%pi*f*t/h)^2-(f/(4*r*h))^2)^(0.5)
printf("the damped angular frequency is %.2fradians/sec if speed govenor loop is closed",wo)
disp('(b)')
printf("since the two area are imilier ,each area will supply half of increase in load .this also evident besause ba=bb  \n change in power %dMW \n speed regulation is infininy",stp/2)
wo1=(2*%pi*f*t/h)^(0.5) //if govenor loop is open alpha is zero
printf("damped angular frequency if speed governor loop is open %.3frad/sec ",wo1)

