clc
//to calculate length 
l=40 //length in cm
c=5/100 //concentration in percentage
theta1=35 //optical rotation in degree ,where theta1=theta'
c1=10/100 //concentration in % ,where c1=c'
theta=20
//formula of specific rotation is alpha=10*theta/l*c
l1=l*c*theta1/(c1*theta)
disp("length is l1="+string(l1)+"cm")
