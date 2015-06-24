//find the clearance of conductor from water level at mid point
clear;
clc;
//soltion
//given
W=.844;//kg/m//Line conductor wieght
L=300;//meter//span of the line
T=1800;//kg//max allowable tension
T1=40;//m//height of the tower 1
T2=80;//m//height of the tower 2
h=T2-T1;//m//difference in the between support
x=L/2-(T*h)/(W*L);
printf("Distance between midpoint and lowest point= %.2fm\n",(L/2)-x);
Smid=(W*(L/2-x)^2)/(2*T);
printf("Height between midpoint and lowest point= %.3fm\n",Smid);
S2=(W*(L-x)^2)/(2*T);
printf("Height between taller tower and lowest point= %.3fm\n",S2);
C=T2-(S2-Smid);
printf("Clearance of conductor from water level at mid point= %.3fm",C)
