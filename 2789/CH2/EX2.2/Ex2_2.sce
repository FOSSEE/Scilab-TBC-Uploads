clear;
clc;

//page no.32
h = 35000;// feet
p1 = 14.7;// psia
T1 = 519;// degreeR
gam1 = 0.0765;// lb/cuft
p2 = 504;// psfa
T2 = T1 - h*0.00356;// degreeR
gam2 = p2/(53.3*T2);// lb/cuft
printf('p2 = %d psfa = %.2f psia\n specific weight = %.3f lb/cuft',p2,p2*0.00695,gam2);
