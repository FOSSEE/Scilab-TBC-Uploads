//Initilization of variables
theta=30 //degrees
EF=40000 //lb
l=36 //feet
//Calculation
//Taking moment about point D and setting EF=40000lbs
P=-(EF*sind(theta)*l)/l //lb
//Result
clc
printf('The maximum value of P is %flb\n',P)
printf('The negative sign indicates the downward direction')
