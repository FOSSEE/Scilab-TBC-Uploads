clear
clc
//initialisation of variables
b= 6 //in
s= 12 //in
d= 4 //in
a1= 30 //degrees
a2= 90 //degrees
a3= 120 //degrees
N= 120 //r.p.m
n= 4
//calculations
A= 2*%pi*N/60
V= %pi*(b/12)^2*n/4
v= (b/12)^2*A*(b/12)/(d/12)^2
Q1= v*%pi*(d/12)^2*sind(a1)/4
Q2= v*%pi*(d/12)^2*sind(a2)/4
Q3= v*%pi*(d/12)^2*sind(a3)/4
Q4= V-Q1
Q5= Q2-V
Q6= Q3-V
a4= asind(V/(v*%pi*(d/12)^2))+a1
A= 180-a4-a1
//RESULTS
printf ('rate of flow at a1 = %.3f cuses',Q4)
printf ('\n rate of flow at a2 = %.3f cuses',Q5)
printf ('\n rate of flow at a3 = %.3f cuses',Q6)
printf ('\n crak angle = %.1f degrees',a4)
printf ('\n crak angle = %.1f degrees',A)

//The answer is a bit different due to rounding off error in textbook

