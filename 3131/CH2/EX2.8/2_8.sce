clear all; clc;
disp("Ex 2_8")
f=100
b1=60//given angle theta in degrees
b=b1*%pi/180
g1=45//given angle theta in degrees
g=g1*%pi/180
p=sqrt(1-(cos(b)^2)-(cos(g)^2))
p1=p*(-1)
printf('\n\ncos(alpha) = + or - %.1f',p)
l1=acos(p)
lf=l1*180/%pi
l2=acos(p1)
lf1=l2*180/%pi
printf('\n\n alpha = %.0f degrees or %.0f degrees',lf,lf1)
disp(" ")
disp("From figure 2-29 , alpha = 60 degrees")
F_i=f*cos(l1)
F_j=f*cos(b)
F_k=f*cos(g)
printf('\n\nF = (%.1f i + %.1f j + %.1f k) N',F_i,F_j,F_k)
disp(" ")
disp("To verify that F=100 N")
F=sqrt(F_i^2+F_j^2+F_k^2)
printf('\n\nF = %.0f N',F)
