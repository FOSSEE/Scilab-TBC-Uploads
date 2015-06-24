//1)The answer of Fx in Part(a) is 1532N and not !530N as stated.
//2)The answer of Fy in Part(a) is 1286N and not 129N as stated.
//3)The answer of Fx! in pPart(b) is 1769.10N and not 1770N as stated 
clear all; clc;
disp("Ex 2_2")
disp("Part (a)")
//refer figure 2-11b
printf('\nVector addition is F=Fx+Fy')
f=2000//magnitude of force F in N
//Refering figure 2-11c, from vector triangle
theta1=40//angle in degrees
theta=theta1*%pi/180//angle in radian
Fx=f*cos(theta)
Fy=f*sin(theta)
printf('\nFx= %.0f N',Fx)
printf('\nFy= %.0f N',Fy)
printf('\n')
disp("Part (b)")
p1=50 //angle in degrees
p=p1*%pi/180 //angle in radian
q1=60 //angle in degrees
q=q1*%pi/180 //angle in radian
r1=70 //angle in degrees
r=r1*%pi/180 //angle in radian
//refer figure 2-11d
printf('\n\nVector addition is F=Fx!+Fy')
//Refer fig 2-11e, using law of sines and vector triangle
Fx1=f*(sin(p)/sin(q))
Fy1=f*(sin(r)/sin(q))
printf('\n\nFx! = %.2f N',Fx1)
printf('\nFy = %.0f N',Fy1)
