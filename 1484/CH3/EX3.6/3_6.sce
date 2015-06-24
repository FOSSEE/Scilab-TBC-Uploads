clc 
//initialisation of variables
sm= 13.6
so= 0.8
di= 8 //in
dt= 4 //in
K= 0.98
v= 1//ft
g= 32.2 //ft/sec^2
//CALCULATIONS
s= sm/so
dp= v*12*(s-1)/12
A= %pi*(di/12)^2/4
At= %pi*(dt/12)^2/4
C= A*sqrt(2*g)/(sqrt((A/At)^2-1))
Q= C*sqrt(v*12+dt)*K
//RESULTS
printf ('Discharge passing through the pipe= %.2f cuses ',Q)
