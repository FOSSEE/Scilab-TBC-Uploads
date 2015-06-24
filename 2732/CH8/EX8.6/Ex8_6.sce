clc
//initialization of variables
clear
h=3.5 //m
r_xx=7.08 //cm
A=24.38 //cm^2
Q=0.5
Q1=Q*h*100/r_xx

//Permissible load by secent formula
P=1231.28*2*A
printf('Permissible load by secent formula: %d kg',P)

//Permissible load by Rankine-Gordon formula
P=1260/(1+(24.75^2/18000))*2*A
printf('\n Permissible load by Rankine-Gordon formula: %d kg',P)

//Permissible load by parabolic formula
P=(1050-0.0233*Q1^2)*2*A
printf('\n Permissible load by parabolic formula: %d kg',P)

//Permissible load by straight-line formula
P=(1120-Q1*4.8)*2*A
printf('\n Permissible load by parabolic formula: %d kg',P)

// Rounding off errors in the text

