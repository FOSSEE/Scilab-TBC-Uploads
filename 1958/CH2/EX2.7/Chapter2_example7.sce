clc
clear
//Input data
m=5//Mass of block in kg
F=20//Constant force in N
x=6//Distance moved by the block in m

//Calculations
W=(F*x)//Workdone by the block in J
v=sqrt((2*W)/m)//Speed of the block in m/s

//Output
printf('Speed of the block when it moves through a distance of %3.0f m is %3.2f m/s',x,v)
