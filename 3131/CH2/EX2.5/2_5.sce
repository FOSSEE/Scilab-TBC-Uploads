clear all; clc;
disp("Ex 2_5")
//Refer figure 2-17b, we determine the magnitude of each component using trignometry
f=200//Magnitude of force F1 in N
p1=30//given angle theta in degrees
p=p1*%pi/180//angle in radian
x1=-1*f*sin(p)
x=x1*(-1)
y=f*cos(p)
printf('\n\nF_1x = %g N = %g N leftwards',x1,x)
printf('\n\nF_1y = %.0f N upwards',y)
//Refer figure 2-17c, we determine the magnitude of each component using proportional parts of similar triangles
g=260//Magnitude of force F2 in N
q=g*(12/13)
r1=g*(5/13)
r=r1*(-1)
printf('\n\nF_2x = %g N rightwards',q)
printf('\n\nF_2y = %.0f N = %g N downwards',r,r1)
printf('\n\nCartesian Vector Notation')
printf('\n\nF1 = {%g i + %.0f j}N',x1,y)
printf('\n\nF2 = {%g i %g j}N',q,r)
