//chapter 5
//example 5.12
//page 441
clear;
clc;
disp("example 5.12");
KVA=2000;
V=6600;     //rating
V_p=6600/sqrt(3);
I_a=(KVA*1000)/(sqrt(3)*V);
R_a=0.4;    //armature resistance
X_s=4.5     //synchronous reactance
pf=0.8;
phi=acosd(pf);
printf("\nV/phase= %dV \n",V_p)
E=sqrt((V_p*cosd(phi)+I_a*R_a)^2+(V_p*sind(phi)+I_a*X_s)^2)
printf("E=  %f V per phase\n",E);
R=((E-V_p)*100)/V_p;
printf("percentage change in terminal voltage= %f percent",R);