clc
// initialization of variables
clear
D=5 //cm
Y=3500 //kg/cm^2

//part (a)
Ta=350 //kg-m
tau=Y/2
Ip=Ta*D*100/(2*tau)
d1=Ip*32/%pi
d1=(D^4-d1)^(1/4)

//part (b)
Tb= 700 //kg-m
Ip=Tb*D*100/(2*tau)
d2=Ip*32/%pi
d2=(D^4-d2)
T=tau*%pi*(D^4)*2/(32*D)
// results
printf('The maximum diameter corresponding to the case a is %.2f cm',d1)
printf('\n Since the daimeter for the case (b) is coming out to be negative, \n The maximum torque transmitted is %.d kg-m',T/100)

