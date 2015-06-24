clear all; clc;
disp("Ex 2_4")
printf('\nPart(a)')
//Figure 2-13b vector addition according to parallelogram law
//We use figure 2-13c to find F1 and F2 by using law of sines
a=1000//Magnitude of resultant force in N
p1=30//given angle theta in degrees
p=p1*%pi/180//angle in radian
q1=130//angle in degrees
q=q1*%pi/180//angle in radian
r1=20//given angle theta in degrees
r=r1*%pi/180//angle in radian
b=(sin(p)/sin(q))*a
printf('\nF1 = %.0f N',b)
c=(sin(r)/sin(q))*a
printf('\nF2 = %.0f N',c)
printf('\n\nPart(b)')
//Refering figure 2-13d, we know that F2 will be minimum when theta=70 degree
s1=70//given angle theta in degrees
s=s1*%pi/180//angle in radian
d=a*sin(s)
e=a*cos(s)
printf('\nF1 = %.0f N',d)
printf('\nF2 = %.0f N',e)
