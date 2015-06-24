//Initilization of vraiables
g=386 //in/s^2
W=20 //lb
w=600 //rpm
ratio=1/12
//Calculations
r=sqrt((1/ratio)+1) 
fn=((w/60)/r) //cps
k=((fn*2*%pi)^2*W)/(g) //lb/in
//Result
clc
printf('The value of k is %f lb/in',k)
