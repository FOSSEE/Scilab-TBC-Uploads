clear;
clc;

//page no. 240

G = 240;//lb/sec
A1 = 4;//sqft
A2 = 2;//sqft
z1 = 30;//ft
z2 = 80;//ft
V1 = 600;// fps
V2 = 800;//fps
p1 = 20;//psia
p2 = 35;// psia
gam1 = G/(A1*V1);
gam2 = G/(A2*V2);
T1 = p1*144/(53.3*gam1);
T2 = p2*144/(53.3*gam2);
del_H = 186.5*(T2-T1);
E_H1 = (V2^2)/(2*32.2) - (V1^2)/(2*32.2) +del_H+z2-z1;
E_H2 = (V2^2)/(2*32.2) - (V1^2)/(2*32.2) +del_H;
Q = G*E_H2/550;
printf('T1 = %d degreeR,\n T2 = %d degreeR',T1,T2);
printf('\n The net heat energy added = %d hp',Q);

//there is an error in the answer given in textbook
