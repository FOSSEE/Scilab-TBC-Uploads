//chapter 5
//example 5.10
//page 440
disp("example 5.10")
clear;
clc;
V=2000;
V_oc=500;         //open circuit voltage
I_sc=100;         //short circuit current
I_a=100;      
R_s=0.8;          //armature resistance
Z_s=V_oc/I_sc;    //synchronous impedence
printf("Z_s= %d ohm\n",Z_s);
X_s=sqrt(Z_s^2-R_s^2);
printf("X_s= %f ohm\n",X_s);
pf=1;
phi=acosd(pf);
disp("At unity power factor");
printf("\n");
E=sqrt((V*cosd(phi)+I_a*R_s)^2+(V*sind(phi)+I_a*X_s)^2);
printf("induced emf= %fV\n",E);
R=((E-V)*100)/V;
printf("regulation= %f percent\n",R);
clear pf;
pf=0.71;
phi=acosd(pf);
disp("At 0.71 lagging power factor");
printf("\n");
E=sqrt((V*cosd(phi)+I_a*R_s)^2+(V*sind(phi)+I_a*X_s)^2);
printf("induced emf= %fV\n",E);
R=((E-V)*100)/V;
printf("regulation= %fpercent\n",R);
clear pf;
pf=0.8;
phi=acosd(pf);
disp("At 0.8 leading power factor");
printf("\n");
E=sqrt((V*cosd(phi)+I_a*R_s)^2+(V*sind(phi)-I_a*X_s)^2);
printf("induced emf= %fV\n",E);
R=((E-V)*100)/V;
printf("regulation=  %fpercent\n",R);
