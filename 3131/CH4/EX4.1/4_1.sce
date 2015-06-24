clear all; clc;
disp("Ex 4_1")
p1=30
p=p1*%pi/180
q1=45
q=q1*%pi/180
//The multiplicand indicates the amount of force and the multiplier indicates the distance from the point "O" in all the figures
a=100*2//Refer figure 4-4a
printf('\n\nM_O = %.0f Nm clockwise',a)
b=50*0.75//Refer figure 4-4b
printf('\n\nM_O = %.1f Nm clockwise',b)
c=40*(4+2*cos(p))//Refer figure 4-4c
printf('\n\nM_O = %0.0f Nm clockwise',c)
d=60*1*sin(q)//Refer figure 4-4d
printf('\n\nM_O = %0.1f Nm anti-clockwise',d)
e1=7000*(4-1)//Refer figure 4-4e
e=e1/1000
printf('\n\nM_O = %0.1f kNm anti-clockwise',e)
