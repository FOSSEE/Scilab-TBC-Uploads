//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_7.sce.

clc;
clear;
//input data are taken from example 9.5
V=1+%i*0;
Xd=1.0;
Xq=0.6;
pf=0.8;
theta=acosd(pf);
Ia1=pf-%i*sind(acosd(pf));
Ia=1.0;               //phase magnitude of Ia

printf("\n   (a)")
//lagging power factor
tan_del=(Ia*Xq*cosd(theta))/(V+(Ia*Xq*sind(theta)));
del=atand(real(tan_del));
Ef_dash=((V+(Ia*Xq*sind(theta)))^2+(Ia*Xq*cosd(theta))^2)^(1/2);
Ef=real(Ef_dash)+(Ia*sind(theta+del)*(Xd-Xq));
reg=((Ef-V)/1.0)*100;
printf("\n  Voltage Regulation for 0.8 lagging power factor=%d percentage \n",reg)

printf("\n   (b)")
tan_del=(Ia*Xq*cosd(theta))/(V-(Ia*Xq*sind(theta)));
del=atand(real(tan_del));
Ef=((V-(Ia*Xq*sind(theta)))^2+(Ia*Xq*cosd(theta))^2)^(1/2);
reg=((Ef-V)/1.0)*100;
printf("\n  Voltage Regulation for 0.8 leading power factor=%2.0f percentage",reg)
