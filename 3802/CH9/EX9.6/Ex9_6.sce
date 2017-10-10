//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_6.sce.

clc;
clear;
P=500e3;
Vl=3.3e3
Il=P/(sqrt(3)*Vl);
Vph=Vl/sqrt(3);
Iph=Il;
Rph=0.4;
Xsyn=4.2;

printf("\n   (a)")
pf=1;            //unity
Ef=((Vph+(Iph*Rph))^2+(Iph*Xsyn)^2)^(1/2);
reg=((Ef/Vph)-1)*100;
printf("\n  Voltage Regulation for unity power factor=%1.2f percentage \n",reg)

printf("\n   (b)")
pf=0.8;             //lagging
theta=acosd(pf);
Ef=((Vph+(Iph*Rph*cosd(theta))+(Iph*Xsyn*sind(theta)))^2+((Iph*Xsyn*cosd(theta))-(Iph*Rph*sind(theta)))^2)^(1/2);
reg=((Ef/Vph)-1)*100;
printf("\n  Voltage Regulation for 0.8 lagging power factor=%2.3f percentage \n",reg)

printf("\n   (c)")
pf=0.8;              //leading
theta=acosd(pf);
Ef=((Vph+(Iph*Rph*cosd(theta))-(Iph*Xsyn*sind(theta)))^2+((Iph*Xsyn*cosd(theta))+(Iph*Rph*sind(theta)))^2)^(1/2);
reg=((Ef/Vph)-1)*100;
printf("\n  Voltage Regulation for 0.8 leading power factor=%1.1f percentage \n",reg)
