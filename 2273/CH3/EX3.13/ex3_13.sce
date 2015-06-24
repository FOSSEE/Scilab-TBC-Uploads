//find the clearance of conductor from ground i)At its lowest elevation ii)the min clearance of the line
clear;
clc;
//soltion
//given
W=.8;//kg/m//Line conductor wieght
L=300;//meter//span of the line
T=1500;//kg//max allowable tension
T1=30;//m//height of the towers
g=1/20;//tan Θ//ground slope
h=L*g//m//vertical distance between two towers
T2=T1+h;//m//height of the tower along the slope
x1=L/2-(T*h)/(W*L);
printf("Distance between tower on ground and sag=x1= %.2fm\n",x1);
S1=(W*x1^2)/(2*T);
printf("Sag for tower on ground(S1)= %.5fm\n",S1);
S2=(W*(L-x1)^2)/(2*T);
printf("Sag for tower on hill(S2)= %.5fm\n",S2);
C=T1-S1-x1*g;
printf("Clearance of conductor from lowest elevation= %.5fm\n",C);
x=poly(0, 'x');
C1= poly([C -g W/(2*T)],'x','c');
d=derivat(C1);
xa=roots(d);
Ca=C-g*xa+W/(2*T)*xa^2;
printf("Minimum clearance from ground= %dm",Ca);
