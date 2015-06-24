//Initilization of variables
theta=%pi/3 //rad
//Calculations
t=sqrt(theta) //s
thetadot=2*t 
thetadoubledot=2
r=2*t^2
rdot=4*t
rdoubledot=4
ax=rdoubledot-(r*thetadoubledot*thetadoubledot) //ft/s^2
ay=2*rdot*thetadot+r*thetadoubledot //ft/s^2
a=sqrt(ax^2+ay^2)
thetax=30+atand(ax/ay) //degrees
//Solving by cartesian co-ordinate system yields same solution
//Result
clc
printf('The acceleration is %f ft/s^2 and thetax=%f degrees',a,thetax)
//Decimal accuracy causes discrepancy in answers
