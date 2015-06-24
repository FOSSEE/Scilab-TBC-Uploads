clc
//Initialization of variables
d1=4 //in
h1=3.75 //in
w1=0.85 //lb
gamma=52 //lb/ft^3
d2=5 //in
depth=3 //in
//Calculations
A=[(d1/2)*(d1/2), -(d2/2)*(d2/2)+(d1/2)*(d1/2) ; 1,1]
b=[0;w1*12*(12*2/d1)^2 /(gamma*%pi)]
C=A\b
x=C(1,1)
y=C(2,1)
height=depth-x
//Results
printf('Bottom of the cylinder will be %.2f in above the bottom of hollow cylinder',height)
