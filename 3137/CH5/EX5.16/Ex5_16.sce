//Initilization of variables
w=100 //N/m
F1=200 //N
M=500 //N.m
Lw=2 //m
//Distance from point A
d=[1;2;3;4;5] //m
//Distance from point B
b=[5;4;3;2;1] //m
//Calculations
//Taking moment aboout point A
Ra=(w*Lw*d(1,1)+F1*d(3,1)-M)/d(4,1) //N
//Taking moment about point B
Rb=(w*Lw*b(3,1)+F1*b(5,1)+M)/b(2,1) //N
//Result
clc
printf('The value of reaction at A and B are %f N and %f N respectively',Ra,Rb)  
