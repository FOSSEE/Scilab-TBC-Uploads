clc;
//page 86
// Given data
P=30; // lb, Force applied to shift lever 
alpha=20;// degree, angle made by force P with -ve X axis
Q=P*sind(alpha)//in degree

d=3//in ft
M_o=Q*d//N.m , here negative signs are taken as each component creates moment clockwise
printf("The moment of force P about B is %.2f lb-ft . -ve sign \n shows its acting clockwise\n",M_o);


