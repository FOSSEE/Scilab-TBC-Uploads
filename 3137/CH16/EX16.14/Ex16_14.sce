//Initilization of variables
W=20 //lb
g=32.2 //ft/s^2
vb=0.5 //rad/s
//Calculations
//Using equations of motion
//Solving the three equations simultaneously by matrix method
X=[0,1,-(W/g)*5.2;-1,0,-(W/g)*3;3,-3,-(1/12)*(W/g)*12^2]
Y=[-0.75*(W/g);(W/g)*1.3-W;0]
C=inv(X)*Y
A=C(1) //lb
B=C(2) //lb
alpha=C(3) //rad/s^2
//Result
clc
printf('The value of alpha is %f rad/s^2 and of A and B are %f lb \nand %f lb respectively',alpha,A,B)
