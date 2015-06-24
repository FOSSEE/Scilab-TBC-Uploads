//chapter 5
//example 5.9
//page 439
clear;
clc;
disp("example 5.9");
printf("\n");
OP=500000;     //output power
V_l=3300;      //line voltage
I_l=OP/(sqrt(3)*V_l);      //line current
printf("line current=  %fA\n",I_l);
//for star connected alternater, line current is equal to phase current
I_a=I_l;
pf=0.8;        //power factor
phi=acosd(pf);
R_a=0.3;       //synchronous resistance
X_s=4;         //synchronous reactance
V_p=V_l/sqrt(3);
printf("phase voltage=  %fV\n",V_p)
E=sqrt((V_p*cosd(phi)+I_a*R_a)^2+(V_p*sind(phi)+I_a*X_s)^2);
printf("induced emf=  %f V/Phase\n",E  )
PR=((E-V_p)*100)/V_p;
printf("percentage regulation=  %f percent\n",PR);