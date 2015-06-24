clc
T3=12
a=27.8
T1=T3*(tand(45+a/2))^2
Tf=T1-T3
printf('the deviator stress at failure = %f lb/in^2',Tf)
