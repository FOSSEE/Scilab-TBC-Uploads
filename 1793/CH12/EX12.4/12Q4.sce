clc
//For normally consolidated clay, c' = 0.
a=30
T3=10
T1=T3*(tand(45+a/2))^2
Tf=T1-T3
printf('The deviator stress at failure = %f lb/in^2',Tf)
