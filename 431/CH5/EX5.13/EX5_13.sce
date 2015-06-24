//chapter 5
//example 5.13
//page 442
clear;
clc;
disp("example 5.13");
printf("\n");
KVA=1200;       //output power
printf("output power=%d\n",KVA)
V_l=3300;       //line voltage
R_a=0.25;       //armature resistance
I_l=(KVA*1000)/(sqrt(3)*V_l);    //line current
//for star connected I_l=I_a
I_a=I_l;
V_p=V_l/sqrt(3);
printf("V per phase= %dV\n",V_p)
//field current of 40A produces short circuit current of 200A and open circuit emf 1100
v_l=1100;
i_s=200;
Z_s= v_l/(sqrt(3)*i_s);     //synchronous impedence
printf("Synchronous impedance,Zs=%f ohm\n",Z_s)
X_s=sqrt(Z_s^2-R_a^2);      //synchronous reactance
disp("(a)for 0.8 lagging power facor");
pf=0.8;
phi=acosd(pf);
E=sqrt((V_p*cosd(phi)+I_a*R_a)^2+(V_p*sind(phi)+I_a*X_s)^2)
printf("induced emf,E=%f V\n",E);
R=((E-V_p)*100)/V_p;
printf("regulation=%f percent\n\n",R);
clear pf;
pf=0.8;
phi=acosd(pf);
disp("(b)For leading power factor load")
E=sqrt((V_p*cosd(phi)+I_a*R_a)^2+(V_p*sind(phi)-I_a*X_s)^2)
printf("induced emf,E= %f V\n",E);
R=((E-V_p)*100)/V_p;
printf("regulation=%f percent",R);