//Initilization of variables
W=8 //lb
//Calculations
//work done by the spring woithout k
Ws=0.5*((9/12)^2-(1/12)^2) 
//Work done by gravity
Wg=W*(10.5/12) //ft-lb
//Change in KE is zero
k=Wg/Ws //lb/ft
//Result
clc
printf('The value of k is %f lb/ft',k)
