//The textbook has a typo in printing the question number
//Initilization of variables
W1=96.6 //lb
W2=128.8 //lb
v=8 //ft/s
g=32.2 //ft/s^2
theta=30 //degrees
//Calculations
//Initial KE of the system is T1=0
T2=(0.5*(W1/g)*v^2)+(0.5*(W2/g)*(v/2)^2) //ft-lb
//Work Done without s term
U=-(W1*sind(theta))+W2*0.5
//S calculations
s=T2/U //ft
//Result
clc
printf('The block attains a speed of 8ft/s in %f ft',s)
