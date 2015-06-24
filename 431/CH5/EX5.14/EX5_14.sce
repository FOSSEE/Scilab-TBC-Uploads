//chapter 5
//example 5.14
//page 443
clear;
clc;
disp("example 5.14");
disp("star connected alternator")
printf("\n");
KVA=1500;         //rating
ph=3;            //3-phase
V_l=6600;       //voltage
Ra=0.4         //armature resistance
Xs=6;         //reactance
Ia=(KVA*1000)/(sqrt(3)*V_l);
printf("Full-load current= %d A\n",Ia);
V=V_l/sqrt(3);
printf("Voltage per phase=%d V\n",V);
disp("for 0.8 lagging power facor");
pf=0.8;           //power factor
phi=acosd(pf);
E=sqrt((V*cosd(phi)+Ia*Ra)^2+(V*sind(phi)+Ia*Xs)^2)
printf("induced emf=%f V\n\n",E);
disp("then at 0.8 leading power factor");
Vt=4743; //solved manually 
printf("termial Voltage, line-to-line=%d V\n",(sqrt(3)*Vt))