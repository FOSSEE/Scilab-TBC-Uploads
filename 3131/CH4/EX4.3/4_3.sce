clear all; clc;
disp("Ex 4_3")
//Assume that positive moments act counterclockwise i.e in the +k direction
d1=30
d=d1*%pi/180
a=(-50)*2
b=60*0
c=20*3*sin(d)
e=(-40*(4+(3*cos(d))))
f1=a+b+c+e
printf('\n\nM_RO = %.0f Nm',f1)
f=f1*(-1)
printf('\n\ni.e. M_RO = %.0f Nm clockwise',f)
