//Finding resistance
//Example 2.8(pg. 24)
clc
clear
R20=50// resistance in ohms
T=60,t=20// temp in degree C
k0=0.00427//temp coefficient at zero degreeC
R0=R20/{1+(k0*t)}
printf('The value of Resistance at 0 degree C is %3.2f ohms \n',R0)
R60=R0*{1+(k0*T)}
printf('The value of Resistance at 60 degree C is %3.2f ohms',R60)
