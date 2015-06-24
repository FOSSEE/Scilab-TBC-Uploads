clear;
clc;

//page no. 186

p1 = 14.7;//psia
V1 = 1732;//pfs
a1 = 862;//fps

M1 = V1/a1;
M2 = sqrt((1+0.4*0.5*M1^2)/(1.4*M1^2 - 0.4*0.5));
p2 = p1*(1+2*(1.4/2.4)*(M1^2 -1));
V2 = V1*(2+0.4*M1^2)/(2.4*M1^2);
a2 = V2/M2;
T2 = a2^2/(1.4*32.2*53.3);
T1 = a1^2/(1.4*32.2*53.3);
del_T = T2-T1;
printf('p2 = %.1f psia,\n V2 = %d fps,\n a2 = %d fps,\n T2 = %d degreeR',p2,V2,a2,T2);
printf('\n Rise of temperature = %d degreeF',del_T);

//There are errors in the answer given in textbook
