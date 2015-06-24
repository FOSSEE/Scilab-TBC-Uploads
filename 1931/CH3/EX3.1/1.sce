clc
clear
//INPUT DATA
x1=%inf//intercept of x-axis from figure 3.15(a) on page no:57
y1=1/2//intercept of y-axis from figure 3.15(b) on page no:57
z1=%inf//intercept of z-axis from figure 3.15(c) on page no:57
x2=1//intercept of x-axis from figure 3.15(a) on page no:57
y2=1/2//intercept of y-axis from figure 3.15(b) on page no:57
z2=%inf//intercept of z-axis from figure 3.15(c) on page no:57
x3=1/2//intercept of x-axis from figure 3.15(a) on page no:57
y3=1/2//intercept of y-axis from figure 3.15(b) on page no:57
z3=%inf//intercept of z-axis from figure 3.15(c) on page no:57

//CALCULATION
p1=1/x1//The miller indices of x-axis
q1=1/y1//The miller indices of y-axis
r1=1/z1//The miller indices of z-axis
p2=1/x2//The miller indices of x-axis
q2=1/y2//The miller indices of y-axis
r2=1/z2//The miller indices of z-axis
p3=1/x3//The miller indices of x-axis
q3=1/y3//The miller indices of y-axis
r3=1/z3//The miller indices of z-axis

//OUTPUT
printf('The miller indices of plane shown in figure 3.15(a) is (%i %i %i) \n The miller indices of plane shown in figure 3.15(b) is (%i %i %i) \n The miller indices of plane shown in figure 3.15(c) is (%i %i %i) ',p1,q1,r1,p2,q2,r2,p3,q3,r3)

