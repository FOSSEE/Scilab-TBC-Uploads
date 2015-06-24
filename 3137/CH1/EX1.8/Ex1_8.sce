//Initilization of variables
P=235 //N
theta=((60*%pi)/180) //radians
bet=((22*%pi)/180) //radians
gam=((38*%pi)/180) //radians
//Calculations
//Part (a)
P_h=P*cos(theta) //N
P_v=P*sin(theta) //N
//Part (b)
P_l=P*cos(theta-bet) //N
P_p=P*sin(gam) //N
//Result
clc
printf('The horizontal component is:%f N\n',P_h) //N
printf('The vertical component is:%f N\n',P_v) //N
printf('The component parallel to plane is:%f N\n',P_l) //N
printf('The component perpendicular to the plane is:%f N',P_p) //N
//The decimal point accurasy might cause a small discrepancy in the answers
